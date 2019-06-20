# host
install/monitor_log_servers:
 pkg.installed:
  - pkgs:
    - nagios-plugins
    - syslog-ng
    - nagios-nrpe-server




/etc/nagios/nrpe.cfg:
 file.managed:
  - source: /srv/salt/conf/nrpe.cfg
  - user: root
  - group: root
  - mode: 777
  - template: jinja
  - default: 
   ip_master: "@10.2.1.48"
   prive_ip_host: "@10.2.1.12"
   nrpe_user: root
   nrpe_local: /etc/nagios/nrpe_local.cfg
   nrpe_d: /etc/nagios/nrpe.d

/etc/syslog-ng/syslog-ng.conf:
 file.managed:
  - source: /srv/salt/conf/syslog-ng.conf
  - user: root
  - group: root
  - mode: 777
  - template: jinja
  - default:
    ip_master: "@10.2.1.48"

/etc/syslog/syslog/syslog-ng.conf:
  file.managed:
  - source: /srv/salt/conf/syslog-ng.conf
  - user: root
  - group: root
  - mode: 777
  - template: jinja
  - default:
    ip_master: "@10.2.1.48"


