# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_config_file = tplroot ~ '.ng.server.config.file' %}
{%- from tplroot ~ "/ng/map.jinja" import apt_cacher_ng with context %}

include:
  - {{ sls_config_file }}
{%- if 'include' in apt_cacher_ng %}
{%- for include_line in apt_cacher_ng.include %}
  - {{ include_line }}
{%- endfor %}
{%- endif %}

apt-cacher-ng/service/running:
  service.running:
    - name: {{ apt_cacher_ng.service }}
    - enable: true
    - require:
      - sls: {{ sls_config_file }}
{%- if 'require' in apt_cacher_ng %}
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
