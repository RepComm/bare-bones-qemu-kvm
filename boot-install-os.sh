
purpose="Install iso OS onto virtual disk \"disk.qcow\" file"

read -p "Script purpose: $purpose, is this ok? [y/n]: " yn

echo "You selected \"$yn\""

if [ "$yn" = "y" ]; then
  echo "Performing $purpose"
  
  sudo qemu-system-x86_64 \
    -enable-kvm \
    -cpu host \
    -boot menu=on \
    -boot order=d \
    -cdrom archlinux-2021.07.01-x86_64.iso \
    -drive file=disk.qcow,format=qcow2 \
    -m 2G \
    -nic user,hostfwd=tcp::10022-:22

    # qemu -cdrom cdimage.iso -boot d /path/to/diskimage.img
  
  # TODO
else
  echo "Exiting script without performing $purpose"
fi
