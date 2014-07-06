{% if grains['os_family'] == 'Debian' %}
{% from "apt-cacher/ng/map.jinja" import apt_cacher_ng with context %}
{%- if apt_cacher_ng.server_address %}

{{ apt_cacher_ng.client_config }}:
  file:
    - managed
    - user: root
    - group: root
    - mode: '644'
    - source: salt://apt-cacher/ng/files/client.conf
    - template: jinja
{%- endif %}
{% endif %}
