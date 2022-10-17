cd ~/klipper
systemctl stop klipper.service
# Octopus Flash
make clean KCONFIG_CONFIG=config.Octopus
#make menuconfig KCONFIG_CONFIG=config.Octopus
make KCONFIG_CONFIG=config.Octopus
#~/plugins/CanBoot/scripts/flash_can.py -d /dev/serial/by-id/usb-CanBoot_stm32f446xx_4A002E000250534E4E313120-if00
~/plugins/CanBoot/scripts/flash_can.py -i can0 -u 99196bb712d5 -f ~/klipper/out/klipper.bin
sudo systemctl start klipper.service

# Linux MCU
make clean KCONFIG_CONFIG=config.Linux
#make menuconfig KCONFIG_CONFIG=config.Linux
make KCONFIG_CONFIG=config.Linux
sudo ./scripts/flash-linux.sh
systemctl start klipper.service
