include:
  - apache

apt-cacher:
  pkg.installed: []
  service.running:
    - enable: True
    - require:
      - pkg: apt-cacher

/etc/apt-cacher/apt-cacher.conf:
  file.managed:
    - source: salt://apt-cacher/files/apt-cacher.conf
    - template: jinja
    - mode: 644
    - watch_in:
      - service: apt-cacher
