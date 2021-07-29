
purpose="Fork the drive at current time"

read -p "Script purpose: $purpose, is this ok? [y/n]: " yn

echo "You selected \"$yn\""

if [ "$yn" = "y" ]; then
  echo "Performing $purpose"
  
  #https://wiki.qemu.org/Documentation/CreateSnapshot
  qemu-img create -f qcow2 -b disk.qcow disk-snapshot.qcow
  
  # TODO
else
  echo "Exiting script without performing $purpose"
fi
