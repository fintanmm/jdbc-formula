{% from "jdbc/map.jinja" import jdbc with context %}

{{ jdbc.mysql }}:
  pkg:
    - installed

