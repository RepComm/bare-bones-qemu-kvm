
purpose="Install qemu-img from apt repo for qemu-utils package"

read -p "Script purpose: $purpose, is this ok? [y/n]: " yn

echo "You selected \"$yn\""

if [ "$yn" = "y" ]; then
  echo "Performing $purpose"
  
  sudo apt install qemu-utils
else
  echo "Exiting script without performing $purpose"
fi
