# vim: ft=sls
# Manage service for service kafka
{%- from "kafka/map.jinja" import kafka with context %}

'kafka-service not configured':
  test.succeed_without_changes

#kafka_service:
#  service.running:
#    - name: kafka
#    - enable: True
#    - watch:
#        - file: kafka_config

