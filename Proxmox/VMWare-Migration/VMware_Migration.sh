#!/bin/bash

read -p 'Enter the path of VMWare Directory: ' vm_path
# read -p 'Enter the Path of OVA Directory: ' ova_path
read -p 'Enter the VM id: ' vm_id


echo "Entering Path "$vm_path""

echo "Finding .vmx file"

vmx_name=$(find "$vm_path/" -name *.vmx)
echo "Found: "$vmx_name""

echo "Converting into OVA"
#find $vm_path -name *.vmx -exec bash -c "ovftool \"{}\" /tmp/"

ovftool "$vmx_name" /tmp

path_in_tmp="$(basename "$vmx_name" .vmx)"
#
echo "Transferring the OVA file onto Proxmox"
rsync  -azvhP -e 'ssh -p 6969' /tmp/"$path_in_tmp" murali@192.168.0.100:/tmp/"$path_in_tmp"
#
#
#
remote_command = 'find /tmp/"$path_in_tmp" -name *.ovf -exec bash -c "qm importovf $vm_id \"{}\" local-zfs --format qcow2" \;'
#
#qm_import="$(sudo find $ova_path -name *.ovf -exec bash -c "qm importovf $vm_id \"{}\" local-zfs --format qcow2" \;)"
#
ssh -t -p 6969 murali@192.168.0.100 'su - root -s /bin/bash -c  "$remote_command" &'
