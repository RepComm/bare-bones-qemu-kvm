
purpose="Install qemu from ubuntu apt repository"

read -p "Script purpose: $purpose, is this ok? [y/n]: " yn

echo "You selected \"$yn\""

if [ "$yn" = "y" ]; then
  echo "Performing $purpose"
  
  apt-get install qemu
else
  echo "Exiting script without performing $purpose"
fi
