
purpose="Thing that does stuff"

read -p "Script purpose: $purpose, is this ok? [y/n]: " yn

if [ "$yn" == "y" ]; then
    echo "Performing $purpose"
else
    echo "Exiting script without performing $purpose"
fi
