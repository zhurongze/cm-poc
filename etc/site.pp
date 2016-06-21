node 'common' {
  class { '::ceph':
    # If we have 3 monitors, TODO
    # mon_host                  => '172.31.249.153,172.31.249.154,172.31.249.155',
    mon_host                  => '10.32.37.73,10.32.37.74,10.32.37.75',
    # If we have 3 monitors, TODO
    # mon_initial_members       => 'node-1,node-2,node-3',
    mon_initial_members       => 'BFJD-PSC-oNest-YW-SV73,BFJD-PSC-oNest-YW-SV74,BFJD-PSC-oNest-YW-SV75',
    # osd_crush_chooseleaf_type => 'host',
    osd_crush_chooseleaf_type => 'host',
    osd_pool_default_crush_rule => 'data',
    osd_crush_update_on_start => 'false',
    osd_pool_default_pg_num => 64, # TODO
    osd_pool_default_pgp_num => 64, # TODO
    osd_pool_default_size        => 3, # TODO
    osd_pool_default_min_size    => 1, # TODO
    # release                   => 'hammer',
    ceph_yum_repo_enable      => false,
    # auth_enable               => true,
    auth_enable               => false,
    debug_enable              => false,
    # osd_disk_type             => 'ssd',
    osd_disk_type             => 'sata',

    # we need set the network, TODO
    public_network            => '10.32.37.0/24',
    cluster_network           => '10.33.37.0/24',

    # we can set others config, such as filestore_op_threads, the key
    # must be defined in ceph::params class
    #filestore_op_threads      => 'default',

    # for osd op
    osd_op_threads               => 3,
    osd_op_thread_timeout        => 60,
    osd_op_complaint_time        => 1,

    # osd leveldb,
    osd_leveldb_write_buffer_size=> 33554432,
    osd_leveldb_cache_size       => 536870912, #OPT_U64
    osd_leveldb_block_size       => 131072,
    osd_leveldb_bloom_size       => 0,
    osd_leveldb_max_open_files   => 0,
    osd_leveldb_compression      => false,
    osd_leveldb_paranoid         => false,

    # osd journal,
    journal_queue_max_ops        => 1024,       #OPT_INT
    journal_queue_max_bytes      => 1073741824,   #OPT_INT
    journal_max_write_bytes      => 1073741824,
    journal_max_write_entries    => 500000,

    # osd filestore,
    filestore_op_threads              => 4,
    filestore_queue_max_ops           => 5000,       #OPT_INT
    filestore_queue_max_bytes         => 1073741824, #OPT_INT
    filestore_queue_committing_max_ops=> 500000,
    filestore_max_inline_xattr_size   => 'default',
    filestore_max_inline_xattrs       => 6,
    filestore_xattr_use_omap          => 'default',
    filestore_fd_cache_size           => 204800, # we need more fd cache size
    filestore_fd_cache_random         => true,   # we custom params in ceph
    filestore_max_sync_interval       => 5,
    filestore_min_sync_interval       => 0.01,
    filestore_omap_header_cache_size  => 204800,
    filestore_fiemap                  => true,

    # osd message,
    osd_client_message_cap            => 60,       #OPT_U64
    osd_client_message_size_cap       => 1073741824,   #OPT_U64
    ms_dispatch_throttle_bytes        => 1073741824,

    # osd filestore wbthrottle,
    filestore_wbthrottle_xfs_ios_hard_limit        => 50000,      #OPT_U64
    filestore_wbthrottle_xfs_bytes_hard_limit      => 10737418240, #OPT_U64
    filestore_wbthrottle_xfs_inodes_hard_limit     => 5000,
    filestore_wbthrottle_xfs_ios_start_flusher     => 500,
    filestore_wbthrottle_xfs_bytes_start_flusher   => 50000000,
    filestore_wbthrottle_xfs_inodes_start_flusher  => 500,
    filestore_wbthrottle_enable                    => true,

  }

  ceph::keyring { 'client.openstack':
    cap_mon       => 'allow *',
    cap_osd       => 'allow *',
  }

}

node 'storage' inherits 'common' {
  $osd_journal_size = 10240

  # we need set the block for osd, TODO
  $block_device_list = [
    '/dev/sda',
    '/dev/sdb',
    '/dev/sdc',
    '/dev/sdd',
    '/dev/sde',
    '/dev/sdf',
    '/dev/sdg',
    '/dev/sdh',
    '/dev/sdi',
    '/dev/sdj',
    '/dev/sdk',
    '/dev/sdl',
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

# RGW+OSD
node 'BFJD-PSC-oNest-YW-SV71' inherits 'storage' {

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
    rgw_thread_pool_size => '256',
    rgw_num_rados_handles => '128',
    rgw_usage_max_shareds => '128',  # TODO BUG
    rgw_usage_max_user_shareds => '1', # TODO BUG
    rgw_enable_ops_log => 'false',
    # rgw_frontends => 'fastcgi socket_port=9000 socket_host=0.0.0.0',
    # above are used for civetweb
    rgw_frontends => 'civetweb port=80',
  }

}

# RGW+OSD
node 'BFJD-PSC-oNest-YW-SV72' inherits 'storage' {

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
    rgw_thread_pool_size => '256',
    rgw_num_rados_handles => '128',
    rgw_usage_max_shareds => '128',  # TODO BUG
    rgw_usage_max_user_shareds => '1', # TODO BUG
    rgw_enable_ops_log => 'false',
    # rgw_frontends => 'fastcgi socket_port=9000 socket_host=0.0.0.0',
    # above are used for civetweb
    rgw_frontends => 'civetweb port=80',
  }

}

# MON+OSD
node 'BFJD-PSC-oNest-YW-SV73' inherits 'storage' {
  ceph::mon { "${::hostname}":
    mon_addr => "10.32.37.73",
  }
  ceph::auth_key { 'client.admin': }
  ceph::auth_key { 'client.openstack': }
  ceph::auth_key { 'client.radosgw': }

}

# MON+OSD
node 'BFJD-PSC-oNest-YW-SV74' inherits 'storage' {
  ceph::mon { "${::hostname}":
    mon_addr => "10.32.37.74",
  }
  ceph::auth_key { 'client.admin': }
  ceph::auth_key { 'client.openstack': }
  ceph::auth_key { 'client.radosgw': }

}

# MON+OSD
node 'BFJD-PSC-oNest-YW-SV75' inherits 'storage' {
  ceph::mon { "${::hostname}":
    mon_addr => "10.32.37.75",
  }
  ceph::auth_key { 'client.admin': }
  ceph::auth_key { 'client.openstack': }
  ceph::auth_key { 'client.radosgw': }

}

# RGW+OSD
node 'BFJD-PSC-oNest-YW-SV76' inherits 'storage' {
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
    rgw_thread_pool_size => '256',
    rgw_num_rados_handles => '128',
    rgw_usage_max_shareds => '128',  # TODO BUG
    rgw_usage_max_user_shareds => '1', # TODO BUG
    rgw_enable_ops_log => 'false',
    rgw_frontends => 'civetweb port=80',
  }
}

# OSD
node 'BFJD-PSC-oNest-YW-SV77' inherits 'storage' {
  # It will be use for scale testing
  notice("balallalal")
}


