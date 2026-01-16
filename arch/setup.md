# Installing

## Connect to WiFi

```bash
iwctl
station wlan0 scan
station wlan0 get-networks
station wlan0 connect SSID-NAME
exit
ping ping.archlinux.com
```

**Important!** Update your keys
```bash
pacman-key --refresh-keys
```
Optionally, sync pacman
```bash
pacman -Sy
```

## Install 
```bash
archinstall
```

recommend to keep everything on US english

## `archinstall` Settings

Language -> English

Loacales -> Leave on US

Mirrors and Repositories -> United States

Disk Configuration
(This isn't very efficient, but it's what I did)
- Partitioning
- Use best effort
- Select drive
- Ext4
- Separate home? Noe
- Partitioning
- Delete the Ext4 partition. I only used best effort to get the EFI
- Create partition, 8GiB linux-swap
- Create partition, BTRFS. Press enter with no size enetered to use the max size available
- On the BTRFS partition, enable compression
- On the BTRFS drive, make the following subvolumes

| Subvolume name | Mount point           |
|----------------|-----------------------|
| @              | /                     |
| @home          | /home                 |
| @log           | /var/log              |
| @pkg           | /var/cache/pacman/pkg |

Swap -> Enable ZRAM

Bootloader -> Probably GRUB is easiest?

Unified kernal images -> Leave on default (disabled)

Hostname -> Set your PC's name

Authentication -> Create a root password, add one user as sudo

Profile
- Type
- Desktop
- Pick DE
- Set graphics drivers
- AMD/ATI open source

Applications
- Bluetooth enabled
- Audio -> pipewire is the more modern option

Kernel -> Can optionally add LTS in addition to the default one

Network Config -> Use network manager

Additional Package -> Nah

Timezone -> Unchanged

NTP -> Enabled

Install

# Post install

## Manual

### Locale Gen

```bash
sudo nano /etc/locale.gen
```
Uncomment `en_GB.UTF-8 UTF-8`.
```bash
sudo locale-gen
```
Reboot. Open Settings -> System -> Region & Language. Set to English (United Kingdom). Log out and log back in. 
Settings -> Keyboard. Update keyboard settings

### Git & SSH Keygen

```bash
ssh-keygen  -t ed25519 -C "your.email@address.com"
cat ~/.ssh/id_ed25519.pub
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

## Installs

```bash
sudo pacman -Syu \
    firefox \
    steam \
    mission-center \
    git \
    ghostty \
    fzf \
    helix \
    rustup \
    cmake \
    python-pip \
    uv \
    --noconfirm

rustup install stable

cargo install bottom
```
