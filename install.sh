#cd to my-hypr-dots 
echo "Changing directory to my-hypr-dots"
cd my-hypr-dots

#mv my bashrc to home
echo "Moving .bashrc to home directory"
cd ~/my-hypr-dots/conf/
mv .bashrc ~/
mv .alias ~/

# Install essential
cd ~/my-hypr-dots
echo "Installing essential"
sudo pacman -S git terminator trash-cli curl kitty playerctl neovim steam bluez bluez-utils blueman pulseaudio pulseaudio-bluetooth pavucontrol brightnessctl gvfs-smb feh thunar bpytop ranger xorg-xrandr hyprpaper waybar

#downloads wallpapers and renames the folder to Pic
echo "Creating Pic directory and installing wallpaper pack"
cd
git clone https://github.com/ChrisTitusTech/nord-background
mv nord-background Pic

#change directory to my-hypr-dots
echo "Changing directory to my-hypr-dots"
cd ~/my-hypr-dots

echo "fonts"
sudo cp -f CaskaydiaMonoNerdFont-Regular /usr/share/fonts/
sudo cp -f  CaskaydiaMonoNerdFont-Bold .local/share/fonts/
sudo cp -f MesloLGS NF Regular.ttf /usr/share/fonts/
sudo cp -f MesloLGS NF Regular.ttf .local/share/fonts/

# Start and enable the Bluetooth service
echo "Starting and enabling the Bluetooth service"
sudo systemctl enable --now bluetooth.service

# Change directory to /etc and set GTK theme to Adwaita-dark
echo "Changing directory to /etc and setting GTK theme to Adwaita-dark"
cd /etc
echo "GTK_THEME=Adwaita-dark" | sudo tee environment

# Return to the home directory
echo "Returning to the home directory"
cd

# Clone NvChad starter configuration for Neovim and open Neovim (requires user interaction)
echo "Cloning NvChad starter configuration for Neovim and opening Neovim"
git clone https://github.com/NvChad/starter ~/.config/nvim

# Indicate that the script has finished
echo "all most done."

echo "one more thing running linutil"
curl -fsSL https://christitus.com/linux | sh