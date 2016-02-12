# match everything
# run /srv/salt/cron.sls or /srv/salt/cron/init.sls
base:
#  '*':
#   - cron

# match only one host - 965251559.acs.edcc.edu
# run /srv/salt/packages/git.sls

  '965251559.acs.edcc.edu':
    - packages.selinux
    - packages.htop
    - packages.iptables
    - users.nick
    - files.os.centos7.crypttab
    - computers.965251559

# match all hosts in the acs.edcc.edu domain
# run /srv/salt/classes/cs.sls

#  '*.acs.edcc.edu':
#    - classes.cs

# match all hosts running Centos 7
# run /srv/salt/centos7.sls or /srv/salt/centos7/init.sls

#  'osfinger:CentOS Linux-7':
#    - match:grain
#    - centos7

#crypttab:
#  file.managed
#    - name: /etc/crypttab
#    - source: salt://files/os/centos7/crypttab


# match all hosts with the role grain set to webserver
# run /srv/salt/webserver/apache.sls
#  'role:webserver':
#    - match: grain
#    - webserver.apache
