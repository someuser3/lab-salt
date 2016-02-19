# match everything
# run /srv/salt/cron.sls or /srv/salt/cron/init.sls
base:
  '*':
    - packages.iptables
    - packages.selinux

# match only one host - 965251559.acs.edcc.edu
  '965251559.acs.edcc.edu':
    - packages.htop
    - packages.nfs
    - users.nick
    - files.os.centos7.crypttab
    - files.os.centos7.nfs-config
    - computers.965251559
