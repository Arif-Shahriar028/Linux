#!/bin/bash

# Function to install selected software
install_software() {
  echo "Installing selected software..."
  for app in "${selected_apps[@]}"
  do
    case $app in
      1) sudo apt-get -y install zsh ;;
      2) sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" ;;
      3) sudo apt install default-jre ;;
      4) sudo apt install default-jdk ;;
      5) wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && sudo apt-get update && sudo apt-get -y install google-chrome-stable ;;
      6) sudo snap install --classic code ;;
      7) sudo apt-get -y install mysql-server ;;
      8) sudo apt-get -y install mysql-workbench ;;
      9) sudo snap install beekeeper-studio ;;
      10) sudo snap install postman ;;
      11) wget https://zoom.us/client/latest/zoom_amd64.deb && sudo dpkg -i zoom_amd64.deb && sudo apt-get install -f ;;
      12) sudo apt-get -y install scrcpy ;;
      13) wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.21.0-amd64.deb && sudo dpkg -i slack-desktop-4.21.0-amd64.deb && sudo apt-get install -f ;;
      14) sudo snap install todoist ;;
      15) wget https://release.gitkraken.com/linux/gitkraken-amd64.deb && sudo dpkg -i gitkraken-amd64.deb && sudo apt-get install -f ;;
      16) sudo apt-get -y install git ;;
      17) sudo apt-get -y install bleachbit ;;
      18) sudo snap install android-studio --classic ;;
      19) sudo snap install intellij-idea-community --classic ;;
      20) sudo snap install sublime-text --classic ;;
      21) sudo apt-get -y install kazam ;;
      22) sudo snap install discord ;;
      23) sudo apt-get -y install vlc ;;
      24) sudo apt install -y openjdk-11-jdk;;
      25) wget https://github.com/codelerity/netbeans-installers/releases/download/v16-build1/apache-netbeans_16-1_amd64.deb && sudo dpkg -i apache-netbeans_16-1_amd64.deb;;
      *) echo "Invalid input: $app" ;;
    esac
  done
}

# Prompt user to select apps to install
echo "Which apps would you like to install?"
echo "1. Zsh"
echo "2. Oh-my-zsh"
echo "3. Java JRE"
echo "4. Java JDK"
echo "5. Google Chrome"
echo "6. Visual Studio Code"
echo "7. MySQL Server"
echo "8. MySQL Workbench"
echo "9. Beekeeper Studio"
echo "10. Postman"
echo "11. Zoom"
echo "12. Scrcpy"
echo "13. Slack"
echo "14. Todo"
echo "15. GitKraken"
echo "16. Git"
echo "17. BleachBit"
echo "18. Android Studio"
echo "19. IntelliJ IDEA"
echo "20. Sublime Text"
echo "21. Kazam"
echo "22. Discord"
echo "23. VLC media player"
echo "24. Open JDK-11"
echo "25. Netbeans"
echo "Enter app numbers separated by spaces (e.g. 1 2 3):"

# Read user input
read -a selected_apps

# Install selected software
install_software

# Clean up
sudo apt-get autoremove
sudo apt-get clean
