
purpose="Boot linux VM with qemu w/ KVM, using virtual disk \"disk.qcow\" file"

read -p "Script purpose: $purpose, is this ok? [y/n]: " yn

echo "You selected \"$yn\""

if [ "$yn" = "y" ]; then
  echo "Performing $purpose"
  
  sudo qemu-system-x86_64 \
    -enable-kvm \
    -cpu host \
    -boot menu=on \
    -boot order=d \
    -drive file=disk-snapshot.qcow,format=qcow2 \
    -m 2G \
    -curses \
    -net user,hostfwd=tcp::10022-:22 \
    -net nic \
    #-nic user,hostfwd=tcp::10022-:22
  # TODO
else
  echo "Exiting script without performing $purpose"
fi
