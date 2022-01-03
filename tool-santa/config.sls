{%- from 'tool-santa/init.sls' import santa -%}

{%- if santa.get('config') %}
Santa is configured as specified via profile:
  macprofile.installed:
    - name: salt.tool.org.google.santa
    - ptype: org.google.santa
    - description: Santa configuration managed by saltstack state tool-santa.config
    - displayname: Santa (salt tool-santa)
    - organization: salt.tool.santa
    - removaldisallowed: False
    - scope: System # this is default, just being explicit
    - content:
      - {{ santa.config | json }}
{%- endif %}
