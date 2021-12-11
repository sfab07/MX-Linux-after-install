curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'

sudo apt-get update

sudo apt-get install -y brave-browser google-chrome-stable deadbeef inkscape cherrytree spacefm webp nautilus lollypop radiotray-lite jnettop pdftk python3-pip eyed3 mencoder 

# autres : zuluscrypt, xmind, yed, refind
