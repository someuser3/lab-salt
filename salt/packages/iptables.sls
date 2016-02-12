iptables-services:
  pkg.installed


iptables:
  pkg:
    - installed
  service:
    - running
  file.managed:
    - name: /etc/syconfig/iptables
    - source: salt://files/iptables
