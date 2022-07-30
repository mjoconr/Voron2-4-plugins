cd ~/klipper
# Octopus Flash
make clean KCONFIG_CONFIG=config.Octopus
#make menuconfig KCONFIG_CONFIG=config.Octopus
make KCONFIG_CONFIG=config.Octopus
make flash FLASH_DEVICE=0483:df11 KCONFIG_CONFIG=config.Octopus

# Linux MCU
make clean KCONFIG_CONFIG=config.Linux
#make menuconfig KCONFIG_CONFIG=config.Linux
make KCONFIG_CONFIG=config.Linux
sudo ./scripts/flash-linux.sh
