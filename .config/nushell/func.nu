def disks () {
    sys disks | sort-by free | reverse | first (1 + 2) | update device /dev/sda
}
