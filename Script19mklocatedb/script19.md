# Script 8: echon
* Script original sin cambios:

```bash
#!/bin/sh
# locate--Searches the locate database for the specified pattern.

locatedb="/tmp/locate.db"

exec grep -i "$@" $locatedb
```

* Cambios realizados al Script:

El script tiene que ejecutarse como root

* Script corregido:
```bash
#!/bin/bash
locatedb="/var/tmp/locate_19code.db"

if [ "$(whoami)" != "haydo" ] ; then
  echo "Must be root to run this command." >&2
  exit 1
fi

find / -print > $locatedb

exit 0
locatedb="/tmp/locate.db"

exec grep -i "$@" $locatedb
```

* Resultado al ejecutar:

  ![alt text](scpt19.png)