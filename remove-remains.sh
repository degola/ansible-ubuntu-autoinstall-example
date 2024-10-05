# in case you want to remove everything of a specific virtual machine, run this on the virtual machine host
virsh net-update vms delete ip-dhcp-host "<host name='ubuntu1'/>" --live --config

virsh destroy ubuntu1
virsh vol-delete ubuntu1 vms
virsh undefine ubuntu1 --nvram

rm /var/lib/libvirt/dnsmasq/*
virsh net-destroy vms && virsh net-start vms

