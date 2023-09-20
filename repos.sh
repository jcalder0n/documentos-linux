#!/bin/bash

echo "# Official Loc-OS mirrors" > /etc/apt/sources.list.d/loc-os.list

echo "# CDN" >> /etc/apt/sources.list.d/loc-os.list

echo "#deb https://cdn-br.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list
echo "deb https://cdn.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list
echo "deb https://bunny.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list

echo "#deb https://bunny-br.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list
echo "deb https://cloud.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list

echo "#USA" >> /etc/apt/sources.list.d/loc-os.list
echo "deb http://us.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list
echo "deb http://us2.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list
echo "deb http://deb.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list

echo "#MEXICO" >> /etc/apt/sources.list.d/loc-os.list
echo "#deb http://mx.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list

echo "#BRAZIL" >> /etc/apt/sources.list.d/loc-os.list
echo "#deb http://br1.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list
echo "#deb http://br2.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list
echo "#deb http://br.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list

echo "#SPAIN" >> /etc/apt/sources.list.d/loc-os.list
echo "#deb http://es.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list
echo "#deb http://es2.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list

echo "#GERMANY" >> /etc/apt/sources.list.d/loc-os.list
echo "#deb http://gr.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list

echo "#FRANCE" >> /etc/apt/sources.list.d/loc-os.list
echo "#deb http://fr.locosporlinux.com contutti main" >> /etc/apt/sources.list.d/loc-os.list

