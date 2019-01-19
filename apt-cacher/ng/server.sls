{% from "apt-cacher/ng/map.jinja" import apt_cacher_ng with context %}

{%- if 'include' in apt_cacher_ng %}
include:
{%- for include_line in apt_cacher_ng.include %}
  - {{ include_line }}
{%- endfor %}
{%- endif %}

apt-cacher-ng-group:
  group.present:
    - name: {{ apt_cacher_ng.group }}
    - require:
      - pkg: apt-cacher-ng
    - watch_in:
      - service: apt-cacher-ng

apt-cacher-ng-user:
  user.present:
    - name: {{ apt_cacher_ng.user }}
    - require:
      - group: apt-cacher-ng-group
    - watch_in:
      - service: apt-cacher-ng

{%- if grains['os_family'] == 'FreeBSD' %}
apt-cacher-ng-sysrc-user:
  sysrc.managed:
    - name: apt_cacher_ng_user
    - value: "{{ apt_cacher_ng.user }}"
    - watch_in:
      - service: apt-cacher-ng
{%- endif %}

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
{%- if 'require' in apt_cacher_ng %}
    - require:
{%- for require in apt_cacher_ng.require %}
      - {{ require }}
{%- endfor %}
{%- endif %}
{%- if 'require_in' in apt_cacher_ng %}
    - require_in:
{%- for require_in in apt_cacher_ng.require_in %}
      - {{ require_in }}
{%- endfor %}
{%- endif %}

{{ apt_cacher_ng.server_config }}:
  file.managed:
    - user: root
    - group: {{ apt_cacher_ng.root_group }}
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
