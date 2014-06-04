/usr/share/java/ojdbc{{ salt['pillar.get']('jdbc:oracle:version') }}.jar:
  file.managed:
    - source: salt://ojdbc{{ salt['pillar.get']('jdbc:oracle:version') }}.jar
    - user: root
    - group: root
    - mode: 644

ojdbc-symlink:
  file.symlink:
    - name: /usr/share/java/ojdbc{{ salt['pillar.get']('jdbc:oracle:version') }}.jar
    - target: /usr/share/java/ojdbc.jar
