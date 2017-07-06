# vim: ft=sls
# How to configure kafka
{%- from "kafka/map.jinja" import kafka with context %}

kafka_config:
  file.managed:
    - name: '/tmp/config.conf'
    - source: salt://kafka/files/config.conf
    - user: root
    - group : root
    - mode: 0600
    - template: jinja
    - local_string: 'test string please ignore'

