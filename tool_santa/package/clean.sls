# vim: ft=sls

{#-
    Removes the Santa package.
#}

{%- set tplroot = tpldir.split("/")[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as santa with context %}


Santa is removed:
  pkg.removed:
    - name: {{ santa.lookup.pkg.name }}
