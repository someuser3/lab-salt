nfs-config:
  file.managed:
    - name: /etc/exports
    - source: salt://files/os/centos7/nfs-config-file
