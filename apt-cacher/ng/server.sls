{% if grains['os_family'] == 'Debian' %}
{% from "apt-cacher/ng/map.jinja" import apt_cacher_ng with context %}

apt-cacher-ng:
  pkg.installed:
    - name: {{ apt_cacher_ng.pkg }}
  service.running:
    - name: {{ apt_cacher_ng.service }}
    - enable: True
    - watch:
      - pkg: {{ apt_cacher_ng.pkg }}
      - file: {{ apt_cacher_ng.credentials }}
      - file: {{ apt_cacher_ng.server_config }}
      - file: {{ apt_cacher_ng.server_cache_dir }}
      - file: {{ apt_cacher_ng.server_log_dir }}

{{ apt_cacher_ng.server_config }}:
  file.managed:
    - user: root
    - group: root
    - mode: '644'
    - source: salt://apt-cacher/ng/files/server.conf
    - template: jinja

{{ apt_cacher_ng.server_cache_dir }}:
  file.directory:
    - makedirs: True
    - user: {{ apt_cacher_ng.user }}
    - group: {{ apt_cacher_ng.group }}
    - mode: '2755'

{{ apt_cacher_ng.server_log_dir }}:
  file.directory:
    - makedirs: True
    - user: {{ apt_cacher_ng.user }}
    - group: {{ apt_cacher_ng.group }}
    - mode: '2755'

{{ apt_cacher_ng.credentials }}:
  file.managed:
    - user: {{ apt_cacher_ng.user }}
    - group: {{ apt_cacher_ng.group }}
    - mode: '600'
    - source: salt://apt-cacher/ng/files/security.conf
    - template: jinja
{% endif %}
