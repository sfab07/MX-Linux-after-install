sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb  && sudo dpkg -i https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt-get install -y spacefm deadbeef zenity radiotray inkscape cherrytree webp gthumb wine playonlinux
