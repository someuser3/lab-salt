iptables-services:
  pkg.installed


iptables:
  pkg:
    - installed
  service:
    - running
