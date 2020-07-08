#@=====[server 복제  hosts 파일 / ssh 설정]
# as user root
# each host~~
#hostnamectl set-hostname pg02
#hostnamectl set-hostname pg03


HOST1="192.168.79.12 pg01.localnet pg01"
HOST2="192.168.79.13 pg02.localnet pg02"

[ $(grep -Fxc "${HOST1}" /etc/hosts) -eq 0 ] && echo "${HOST1}" >>  /etc/hosts
[ $(grep -Fxc "${HOST2}" /etc/hosts) -eq 0 ] && echo "${HOST2}" >>  /etc/hosts

#ssh pg02
#ssh pg03
