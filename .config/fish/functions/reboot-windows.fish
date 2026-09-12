function reboot-windows
    sudo /usr/bin/grub-reboot 'Windows Boot Manager (on /dev/sda3)'
    and systemctl reboot
end
