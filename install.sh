#cd to dotfiles 
echo "Changing directory to dotfiles"
cd dotfiles

# Install essential
echo "Installing essential"
sudo pacman -S git terminator trash-cli curl kitty playerctl neovim steam bluez bluez-utils blueman pulseaudio pulseaudio-bluetooth pavucontrol brightnessctl gvfs-smb feh thunar bpytop ranger xorg-xrandr hyprpaper

#downloads wallpapers and renames the folder to Pic
echo "Creating Pic directory and installing wallpaper pack"
cd
git clone https://github.com/ChrisTitusTech/nord-background
mv nord-background Pic

echo "Changing directory to dotfiles"
cd ~/dotfiles

echo "fonts"
sudo mv CaskaydiaMonoNerdFont-Regular /usr/share/fonts/
sudo mv CaskaydiaMonoNerdFont-Bold /local/share/fonts/
sudo mv MesloLGS NF Regular.ttf /usr/share/fonts/
sudo mv MesloLGS NF Regular.ttf /local/share/fonts/

# Start and enable the Bluetooth service
echo "Starting and enabling the Bluetooth service"
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service

# Change directory to /etc and set GTK theme to Adwaita-dark
echo "Changing directory to /etc and setting GTK theme to Adwaita-dark"
cd 
cd /etc
echo "GTK_THEME=Adwaita-dark" | sudo tee environment

# Return to the home directory
echo "Returning to the home directory"
cd

# Clone NvChad starter configuration for Neovim and open Neovim (requires user interaction)
echo "Cloning NvChad starter configuration for Neovim and opening Neovim"
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

# Indicate that the script has finished
echo "all most done."

echo "one more thing running linutil"
curl -fsSL https://christitus.com/linux | sh