/etc/apt/apt.conf.d/01proxy:
  file.managed:
    - source: salt://apt-cacher/files/01proxy
    - template: jinja
