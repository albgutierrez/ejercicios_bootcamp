usuarios=$(cat /etc/passwd | grep /bin/bash | grep /home | cut -d":" -f1)
fecha=$(date +%y%m%d)

if [ ! -d /backups ]; then
	 mkdir /backups 
fi

for usuario in $usuarios
do
	echo "$(date):$usuario" >> /backups/copias.log
	rutalog="/backups/$fecha"
	dirbackup="$rutalog/$usuario"

	if [ ! -d $dirbackup ]; then
		mkdir -p $dirbackup
	fi

	cp -r /home/$usuario/* $dirbackup 2>/dev/null
	ls -l $dirbackup > $rutalog/$usuario.log
done
