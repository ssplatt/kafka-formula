# vim: ft=sls
# How to install kafka
{%- from "kafka/map.jinja" import kafka with context %}

kafka_pkg:
  pkg.installed:
    - name: {{ kafka.pkg }}

