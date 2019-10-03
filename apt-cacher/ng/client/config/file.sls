# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/ng/map.jinja" import apt_cacher_ng with context %}
{%- from tplroot ~ "/ng/libtofs.jinja" import files_switch with context %}

{%- if grains['os_family'] == 'Debian' %}
  {%- if apt_cacher_ng.server_address %}

apt-cacher/ng/client/config/file:
  file.managed:
    - name: {{ apt_cacher_ng.client_config }}
    - user: root
    - group: root
    - mode: '644'
    - source: {{ files_switch(['client.conf'],
                              lookup='apt-cacher/ng/client/config/file',
                              use_subpath=True
                 )
              }}
    - template: jinja
    - context:
        apt_cacher_ng: {{ apt_cacher_ng | json }}
  {%- endif %}
{%- endif %}
