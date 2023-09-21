#!/bin/bash

echo "¿Estás usando Loc-OS 22 o Loc-OS 23?"
echo "1 Loc-OS 22"
echo "2 Loc-OS 23"
echo ""
echo "Seleccione una:"
read version

clear

if [ "$version" -eq 2 ]; then
    cat <<EOF > /etc/apt/sources.list.d/loc-os.list
# Official Loc-OS mirrors
# CDN
#deb https://cdn-br.locosporlinux.com contutti main
deb https://cdn.locosporlinux.com contutti main
deb https://bunny.locosporlinux.com contutti main
#deb https://bunny-br.locosporlinux.com contutti main
deb https://cloud.locosporlinux.com contutti main
# USA
deb http://us.locosporlinux.com contutti main
deb http://us2.locosporlinux.com contutti main
deb http://deb.locosporlinux.com contutti main
# MEXICO
#deb http://mx.locosporlinux.com contutti main
# BRAZIL
#deb http://br1.locosporlinux.com contutti main
#deb http://br2.locosporlinux.com contutti main
#deb http://br.locosporlinux.com contutti main
# SPAIN
#deb http://es.locosporlinux.com contutti main
#deb http://es2.locosporlinux.com contutti main
# GERMANY
#deb http://gr.locosporlinux.com contutti main
# FRANCE
#deb http://fr.locosporlinux.com contutti main
EOF

    echo "Se ha actualizado de manera correcta."
    echo ""
    echo "Quiere configurar los mirrors (y/N)?"
    read respuesta

    if [ "$respuesta" == "y" ]; then
        clear
        echo "BRAZIL --- 1"
        echo "MEXICO --- 2"
        echo "FRANCE --- 3"
        echo "SPAIN ---- 4"
        echo "GERMANY -- 5"
        echo ""
        read mirror

        case $mirror in
        1)
            # BRAZIL
            sed -i 's/#deb http:\/\/br1.locosporlinux.com contutti main/deb http:\/\/br1.locosporlinux.com contutti main/' /etc/apt/sources.list.d/loc-os.list
            sed -i 's/#deb http:\/\/br2.locosporlinux.com contutti main/deb http:\/\/br2.locosporlinux.com contutti main/' /etc/apt/sources.list.d/loc-os.list
            sed -i 's/#deb http:\/\/br.locosporlinux.com contutti main/deb http:\/\/br.locosporlinux.com contutti main/' /etc/apt/sources.list.d/loc-os.list
            ;;
        2)
            # MEXICO
            sed -i 's/#deb http:\/\/mx.locosporlinux.com contutti main/deb http:\/\/mx.locosporlinux.com contutti main/' /etc/apt/sources.list.d/loc-os.list
            ;;
        3)
            # FRANCE
            sed -i 's/#deb http:\/\/fr.locosporlinux.com contutti main/deb http:\/\/fr.locosporlinux.com contutti main/' /etc/apt/sources.list.d/loc-os.list
            ;;
        4)
            # SPAIN
            sed -i 's/#deb http:\/\/es.locosporlinux.com contutti main/deb http:\/\/es.locosporlinux.com contutti main/' /etc/apt/sources.list.d/loc-os.list
            sed -i 's/#deb http:\/\/es2.locosporlinux.com contutti main/deb http:\/\/es2.locosporlinux.com contutti main/' /etc/apt/sources.list.d/loc-os.list
            ;;
        5)
            # GERMANY
            sed -i 's/#deb http:\/\/gr.locosporlinux.com contutti main/deb http:\/\/gr.locosporlinux.com contutti main/' /etc/apt/sources.list.d/loc-os.list
            ;;
        *)
            clear
            echo "Opción inválida"
            echo "Configurados por defecto"
            echo ""
            cat /etc/apt/sources.list.d/loc-os.list
            ;;
        esac
        clear
        echo "Operación exitosa."
        echo ""
        echo "Repositorios en /etc/apt/sources.list.d/loc-os.list"
        echo ""
        cat /etc/apt/sources.list.d/loc-os.list
    else
        clear
        echo "Operación exitosa, configurados por defecto."
        echo "Repositorios en /etc/apt/sources.list.d/loc-os.list"
        echo ""
        cat /etc/apt/sources.list.d/loc-os.list
    fi

elif [ "$version" -eq 1 ]; then
    cat <<EOF > /etc/apt/sources.list.d/loc-os22.list
deb http://us.locosporlinux.com elloco main
deb http://us2.locosporlinux.com elloco main
deb http://deb.locosporlinux.com elloco main
deb http://br1.locosporlinux.com elloco main
deb http://br2.locosporlinux.com elloco main
deb https://cdn-br.locosporlinux.com elloco main
deb https://cdn.locosporlinux.com elloco main
deb https://bunny.locosporlinux.com elloco main
deb https://bunny-br.locosporlinux.com elloco main
deb https://cloud.locosporlinux.com elloco main
deb http://es.locosporlinux.com elloco main
deb http://es2.locosporlinux.com elloco main
EOF

    echo "Operación exitosa."
    echo ""
    echo "Repositorios en /etc/apt/sources.list.d/loc-os.list"
    echo ""
    cat /etc/apt/sources.list.d/loc-os22.list
else
    clear
    echo "Ha ingresado una opción inválida."
fi
