
purpose="Boot linux VM with qemu w/ KVM, using virtual disk \"disk.qcow\" file"

read -p "Script purpose: $purpose, is this ok? [y/n]: " yn

echo "You selected \"$yn\""

if [ "$yn" = "y" ]; then
  echo "Performing $purpose"
  
  sudo qemu-system-x86_64 \
    -enable-kvm \
    -drive file=disk.qcow,format=qcow2 \
    -cpu host \
    -nographic \
    -m 1024
  
  # TODO
else
  echo "Exiting script without performing $purpose"
fi
