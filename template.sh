
purpose="Do some stuff with some thangs"

read -p "Script purpose: $purpose, is this ok? [y/n]: " yn

echo "You selected \"$yn\""

if [ "$yn" = "y" ]; then
  echo "Performing $purpose"
  
  # TODO
else
  echo "Exiting script without performing $purpose"
fi
