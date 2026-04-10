if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script as root with 'sudo'! Thanks."
    exit
fi

ln -s /etc/sv/sddm /var/service/sddm
