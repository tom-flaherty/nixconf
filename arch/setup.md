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

### Dual Boot

If you haven't already, install the following packages using pacman:

- grub
- grub-btrfs
- efibootmgr
- os-prober

If grub is not yet configured, you can use these commands to install grub (assuming efi is mounted at /boot)

```bash
sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
sudo grub-mkconfig
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

Next, edit `/etc/default/grub` and uncomment `GRUB-DISABLE-OS-PROBER=false`. Then rerun `sudo grub-mkconfig`.

### Bluetooth

If bluetooth does not work, you may need to start the service. To configure the bluetooth service to start automatically, the following command can be used.

```bash
sudo systemctl enable bluetooth.service
```

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

### Gnome3 Settings

- Keyboard settings
- Ensure monitor is at max resolution and frame rate
- Power -> Disable automatic suspend. Change power button function
- Set the default browser to Firefox
- Add the following keyboard shortcuts

| Shortcut     | Command |
|--------------|---------|
| ctrl+shift+t | ghostty |

### Git & SSH Keygen

```bash
ssh-keygen  -t ed25519 -C "your.email@address.com"
cat ~/.ssh/id_ed25519.pub
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

### Create projects folder

Create a projects folder and pin it to the file explorer.

### .bashrc

Append to .bashrc file

```bash
alias gsuir="git submodule update --init --recursive"
alias hx="helix"
export PATH="/home/tomf/.cargo/bin:$PATH"
```

### VS Code

By default vs code uses the hardware codes from your keyboard. This means that
regardless of whether you are in colemak, it will use the qwerty keys for shortcuts.
You can fix this by changing keyboard.dispatch from `code` to `keyCode`.

## Installs

```bash
sudo pacman -Syu \
    grub \
    grub-btrfs \
    efibootmgr \
    os-prober \
    firefox \
    steam \
    mission-center \
    fastfetch \
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

Some extra packages that may be useful:

```bash
# Libreoffice with British English
sudo pacman -S \
    libreoffice-fresh \
    libreoffice-fresh-en-gb

# Libraries for converting .md to .pdf
sudo pacman -S \
    pandoc-cli \
    texlive-latexrecommended \
    texlive-fontsrecommended \
    texlive-xetex \
    texlive-binextra
sudo tlmgr install cm-super
# You can now use:
# pandoc setup.md --pdf-engine=xelatex -o out.pdf
```

### Steam

Configure ctrl shift O to bring up the performance overlay
