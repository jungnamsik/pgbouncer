# as user root
#@=====[pgbouncer 설치]
PGDBVER=12

# yum install http://www.pgbouncer.net/yum/rpms/4.1/redhat/rhel-7-x86_64/pgbouncer-II-release-4.1-1.noarch.rpm
# yum install pgbouncer

yum -y install pgbouncer pgbconsole

#@=====[pgbouncer 서비스 등록]
# as user root
mkdir /etc/systemd/system/pgbouncer.service.d
cat <<EOF > /etc/systemd/system/pgbouncer.service.d/override.conf
[Service]
User=postgres
Group=postgres
EOF

#@=====[pgbouncer-II 소유권 변경]
sudo chown postgres:postgres -R /etc/pgbouncer

#@=====[pgbouncer pid, socket ]
sudo mkdir /var/run/pgbouncer
sudo chown postgres:postgres /var/run/pgbouncer

