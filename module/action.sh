MODDIR="/data/adb/modules/Re-Malwack"
function abort() {
    echo "- $1"
    sleep 0.5
    exit 1
}

echo "
╔────────────────────────────────────────╗
│░█▀▄░█▀▀░░░░░█▄█░█▀█░█░░░█░█░█▀█░█▀▀░█░█│
│░█▀▄░█▀▀░▄▄▄░█░█░█▀█░█░░░█▄█░█▀█░█░░░█▀▄│
│░▀░▀░▀▀▀░░░░░▀░▀░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀░▀░▀│
╚────────────────────────────────────────╝
"
sleep 0.5
echo "- Upgrading weapons 🔫"
sh "$MODDIR/rmlwk.sh" --update-hosts || abort "- Failed to update hosts."

echo "- Everthing is fine now, Enjoy 😉"
