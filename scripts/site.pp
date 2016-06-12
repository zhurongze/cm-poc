node 'common' {
  class { '::ceph':
    # If we have 3 monitors, TODO
    # mon_host                  => '172.31.249.153,172.31.249.154,172.31.249.155',
    mon_host                  => '172.31.249.153',
    # If we have 3 monitors, TODO
    # mon_initial_members       => 'node-1,node-2,node-3',
    mon_initial_members       => 'node-1',
    # osd_crush_chooseleaf_type => 'host',
    osd_crush_chooseleaf_type => 'osd',
    osd_pool_default_crush_rule => 'data',
    osd_crush_update_on_start => 'false',
    osd_pool_default_pg_num => 64, # TODO
    osd_pool_default_pgp_num => 64, # TODO
    osd_pool_default_size        => 1, # TODO
    osd_pool_default_min_size    => 1, # TODO
    # release                   => 'hammer',
    ceph_yum_repo_enable      => false,
    # auth_enable               => true,
    auth_enable               => false,
    debug_enable              => false,
    # osd_disk_type             => 'ssd',
    osd_disk_type             => 'sata',

    # we need set the network, TODO
    cluster_network           => '172.31.249.0/24',
    public_network            => '172.31.249.0/24',

    # we can set others config, such as filestore_op_threads, the key
    # must be defined in ceph::params class
    #filestore_op_threads      => 'default',
  }

  ceph::keyring { 'client.openstack':
    cap_mon       => 'allow *',
    cap_osd       => 'allow *',
  }
  ceph::auth_key { 'client.admin': }
  ceph::auth_key { 'client.openstack': }
  ceph::auth_key { 'client.radosgw': }

}

node 'storage' inherits 'common' {
  $osd_journal_size = 10240

  # we need set the block for osd, TODO
  $block_device_list = [
    '/dev/vdb',
    #'/dev/sdb',
    #'/dev/sdc',
    #'/dev/sdd',
    #'/dev/sde',
    #'/dev/sdf',
    #'/dev/sdg',
    #'/dev/sdh',
    #'/dev/sdi',
    #'/dev/sdj',
    #'/dev/sdk',
    #'/dev/sdl',
    #'/dev/sdm',
  ]

  $block_device_list.each |$disk_label| {
    ceph::osd { "${disk_label}2":
      osd_journal      => "${disk_label}1",
      osd_journal_size => $osd_journal_size,
      block_scheduler  => 'cfq',
      safeguard        => false,
    }
  }

}

node 'monitor_storage' inherits 'storage' {
  ceph::mon { "${::hostname}":
    # mon_addr => '172.31.249.153',
    # we need set the mon_addr correctly, TODO
    mon_addr => $::ipaddress_eth0,
  }

}

node 'rgw_storage' inherits 'monitor_storage' {

  ceph::rgw {"${::hostname}":
    user           => 'root',  # may be www-data
    rgw_dns_name   => '*.domain.tld',  # TODO
    rgw_s3_auth_use_keystone => 'false',
    rgw_resolve_cname => 'false',
    rgw_enable_apis => "s3, swift, swift_auth, admin",
    rgw_cache_enabled => 'true',
    rgw_cache_lru_size => '10000',
    rgw_port => 'default',
    rgw_print_continue => 'true',
    rgw_op_thread_timeout => '600',
    rgw_op_thread_suicide_timeout => '0',
    rgw_thread_pool_size => '200',
    rgw_num_rados_handles => '64',
    rgw_usage_max_shareds => '128',  # TODO
    rgw_usage_max_user_shareds => '1',
    rgw_enable_ops_log => 'false',
    # rgw_frontends => 'fastcgi socket_port=9000 socket_host=0.0.0.0',
    # above are used for civetweb
    rgw_frontends => 'civetweb port=80 access_log_file=/var/log/civetweb/access.log error_log_file=/var/log/civetweb/error.log',
  }

}


node 'node-1' inherits 'rgw_storage' {
  
}
