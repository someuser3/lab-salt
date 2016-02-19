iptables-services:
  pkg.installed

iptables:
  pkg:
    - installed
  service:
    - running
    - enable: True
  file.managed:
    - name: /etc/sysconfig/iptables
    - source: salt://files/os/centos7/iptables-file
    - replace: True

firewalld:
  service:
    - dead
    - enable: False
