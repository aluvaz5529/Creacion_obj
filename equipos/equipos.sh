while IFS=, read -r col1 col2 col3 col4 col5 col6
do
        nombre=$c1
        uo=$c2
        echo -n "Añadiendo equipo $c1..."
        computer add $c1 --computerou=$c2
        echo "[Usuario $c1 creado correctamente]"
done <  $1
