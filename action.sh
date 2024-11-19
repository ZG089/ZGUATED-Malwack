ui_print "
  ╔────────────────────────────────────────╗
  │░█▀▄░█▀▀░░░░░█▄█░█▀█░█░░░█░█░█▀█░█▀▀░█░█│
  │░█▀▄░█▀▀░▄▄▄░█░█░█▀█░█░░░█▄█░█▀█░█░░░█▀▄│
  │░▀░▀░▀▀▀░░░░░▀░▀░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀░▀░▀│
  ╚────────────────────────────────────────╝
"
sleep 0.5
ui_print "       Updating Defenses...."
if ! ping -w 3 google.com &>/dev/null; then

    ui_print "       This module requires internet connection to download"
    abort "        Some utilities, please connect to a mobile network and try again."
fi
# Download the hosts file and save it as "hosts"
wget https://hosts.ubuntu101.co.za/hosts

# merge bombs to get a big nuke
mkdir -p $MODPATH/system/etc
ui_print "       Preparing New weapons🔫..."
{
    for j_cole in /system/etc/hosts hosts; do
        cat $j_cole
        echo ""
    done
} | sort | uniq > $MODPATH/system/etc/hosts

# let's see if the file was downloaded or not.
if [ ! -f "hosts" ]; then
    abort "       Looks like there is a problem with some weapons, maybe check your internet connection?"
else 
    ui_print "       Everthing is fine now, Enjoy 😉"
    sleep 0.5
fi
