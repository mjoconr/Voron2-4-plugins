# Downloads the firmware file in Intel HEX format
wget https://raw.githubusercontent.com/bigtreetech/BIGTREETECH-OCTOPUS-V1.0/master/Firmware/DFU%20Update%20bootloader/bootloader/OctoPus-F446-bootloader-32KB.hex

# Converts the hex firmware to a bin
objcopy --input-target=ihex --output-target=binary OctoPus-F446-bootloader-32KB.hex bootloader.bin

# Optional: Backup the old bootloader
#sudo dfu-util -d ,0483:df11 -R -a 0 -s 0x8000000:32768 -U old-bootloader.bin

# Install the new bootloader
#sudo dfu-util -d ,0483:df11 -R -a 0 -s 0x8000000:leave -D bootloader.bin
