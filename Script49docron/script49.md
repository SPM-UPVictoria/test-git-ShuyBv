# Script 8: echon
* Script original sin cambios:

```bash
echon()
{
  echo "$*" | awk '{ printf "%s", $0 }'
}

echo -n $1
```

* Cambios realizados al Script:

Eliminamos la funcion echon() y solo dejamos lo que esta dentro

* Script corregido:
```bash
echon()
#!/bin/bash
  echo "$*" | awk '{ printf "%s", $0 }'
```

* Resultado al ejecutar:

  ![alt text](scpt8.png)