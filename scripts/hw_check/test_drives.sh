#/bin/bash
export PSSH_OPTS="-h all-hosts.txt"
python g_pssh.py 'write-caching'                hdparm -W '/dev/sd[abcdefghijkl]'
python g_pssh.py 'acoustic'                     hdparm -M '/dev/sd[abcdefghijkl]'
python g_pssh.py 'R/W multiple sector transfer' hdparm -I '/dev/sd[abcdefghijkl]'
python g_pssh.py 'readahead'                    hdparm -a '/dev/sd[abcdefghijkl]'
python g_pssh.py 'APM_level'                    hdparm -B '/dev/sd[abcdefghijkl]'
