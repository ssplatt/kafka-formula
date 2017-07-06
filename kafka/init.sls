# vim: ft=sls
# Init kafka
{%- from "kafka/map.jinja" import kafka with context %}
{# Below is an example of having a toggle for the state #}

{% if kafka.enabled %}
include:
  - kafka.install
  - kafka.config
  - kafka.service
{% else %}
'kafka-formula disabled':
  test.succeed_without_changes
{% endif %}

