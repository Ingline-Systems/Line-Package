::Linux Update
yum update

::Baixando FOP2
cd
wget https://github.com/Ingline-Systems/Line-Package/raw/main/line-package-v.0.5.tgz
tar -zxvf 'line-package-v.0.5.tgz'
mv fop2 /var/www/html
mv stats /var/www/html
rm line-package-v.0.5.tgz -f

::Restart Fop2 - Asternic
service fop2 restart
service asterniclog restart

::Permissões se necessario
chmod 777 /var/www/html/stats
chmod 777 /var/www/html/fop2
