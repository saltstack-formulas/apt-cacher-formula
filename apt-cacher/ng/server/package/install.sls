# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/ng/map.jinja" import apt_cacher_ng with context %}

apt-cacher-ng/package/install:
  pkg.installed:
    - name: {{ apt_cacher_ng.pkg }}
