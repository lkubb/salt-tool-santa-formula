{%- set santa = salt['pillar.get']('tool:santa', {}) -%}

include:
  - .package
{%- if santa.get('config') %}
  - .config
{%- endif %}
