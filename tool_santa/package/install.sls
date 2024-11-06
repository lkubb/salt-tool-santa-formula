# vim: ft=sls

{%- set tplroot = tpldir.split("/")[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as santa with context %}


Santa is installed:
  pkg.installed:
    - name: {{ santa.lookup.pkg.name }}

Santa setup is completed:
  test.nop:
    - name: Hooray, Santa setup has finished.
    - require:
      - pkg: {{ santa.lookup.pkg.name }}
