sshd:
  service:
    - running
    - enable: True
  file.managed:
    - name: /root/.ssh/authorized_keys
    - source: salt://files/os/centos7/sshd-file
    - replace: True
