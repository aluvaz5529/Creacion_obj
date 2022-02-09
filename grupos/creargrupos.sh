while IFS=: read -r c1 c2
do
        # Extraemos los campos de los usuarios
        nombre=$c1
        UO=$c2
        # Añadimos el usuario con samba-tool y lo añadimos a la Unidad Organiza>
        echo -n "Añadiendo grupo $c1..."
        #Añade el usuario en la UO correspondiente
        samba-tool group create add $c1 --group-type=Security --group-scope=Glo>
done <  $1
