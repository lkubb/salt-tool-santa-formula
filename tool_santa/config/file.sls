# vim: ft=sls

{#-
    Manages the Santa package configuration.
    Has a dependency on `tool_santa.package`_.
#}

{%- set tplroot = tpldir.split("/")[0] %}
{%- set sls_package_install = tplroot ~ ".package.install" %}
{%- from tplroot ~ "/map.jinja" import mapdata as santa with context %}

include:
  - {{ sls_package_install }}


{%- if santa.get("config") %}

Santa is configured as specified via profile:
  macprofile.installed:
    - name: salt.tool.org.google.santa
    - ptype: org.google.santa
    - description: Santa configuration managed by saltstack state tool_santa.config
    - displayname: Santa (salt tool_santa)
    - organization: salt.tool.santa
    - removaldisallowed: false
    - scope: System  # this is default, just being explicit
    - content:
      - {{ santa.config | json }}
{%- endif %}
