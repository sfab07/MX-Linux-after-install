#!/bin/bash

choice="$(zenity --width=380 --height=270 --list --column "Choix" --checklist --title="MX after install" --text " Choisissez des logiciels à télécharger!" \
    --column="Noms" --column="Descriptions"\
    FALSE Brave "Navigateur internet"\
    FALSE Chrome "Navigateur internet"\
    FALSE Deadbeef "Lecteur MP3"\
    FALSE Zenity "Framework"\
    FALSE Spacefm "Explorateur de fichiers"\
    FALSE Inkscape "Editeur d'image"\
    FALSE Cherrytree "Prise de note"\
    FALSE Webp "Image webp"\
    FALSE Gthumb "Lecteur d'image"\
    FALSE Playonlinux "Emulateur windows"\

)"

if [ "${PIPESTATUS[0]}" != "0" ]; then
   exit
fi

case "${choice}" in
    *"Brave"* )
    echo "# Téléchargements de Brave"
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
    echo "10"
    ;;
esac

case "${choice}" in
    *"Chrome"* )
    echo "# Téléchargements de Chrome"
https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb  && sudo dpkg -i https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    echo "10"
    ;;
esac

case "${choice}" in
    *"Deadbeef"* )
    echo "# Téléchargements de Deadbeef"
sudo apt-get install -y deadbeef
    echo "10"
    ;;
esac

case "${choice}" in
    *"Zenity"* )
    echo "# Téléchargements de Zenity"
sudo apt-get install -y zenity
    echo "10"
    ;;
esac

case "${choice}" in
    *"Spacefm"* )
    echo "# Téléchargements de Spacefm"
sudo apt-get install -y spacefm
    echo "10"
    ;;
esac

case "${choice}" in
    *"Inkscape"* )
    echo "# Téléchargements de Inkscape"
sudo apt-get install -y inkscape
    echo "10"
    ;;
esac

case "${choice}" in
    *"Cherrytree"* )
    echo "# Téléchargements de Cherrytree"
sudo apt-get install -y cherrytree
    echo "10"
    ;;
esac

case "${choice}" in
    *"Webp"* )
    echo "# Téléchargements de Webp"
sudo apt-get install -y webp
    echo "10"
    ;;
esac

case "${choice}" in
    *"Gthumb"* )
    echo "# Téléchargements de Gthumb"
sudo apt-get install -y gthumb
    echo "10"
    ;;
esac

case "${choice}" in
    *"Playonlinux"* )
    echo "# Téléchargements de Playonlinux"
sudo apt-get install -y wine playonlinux
    echo "10"
    ;;
esac
