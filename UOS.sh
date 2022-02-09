#para comprobarlo samba-tool ou list
#!/bin/bash
while IFS=: read -r c1 c2 c3
do
        nombre=$c1
        dc1=$c2
        dc2=$c3
        echo OU=$c1,DC=$c2,DC=$c3
        echo -n "Creando UO $c1..."
        samba-tool ou create OU=$c1,DC=$c2,DC=$c3
        echo "UO $c1 creada correctamente"
        echo "todo se a completado adecuadamente"

done < $1
