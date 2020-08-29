dpkg --add-architecture i386
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
apt-get update
yes|apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 libstdc++6:i386
yes|apt-get install lib32z1 lib32ncurses5 libbz2-1.0:i386 libstdc++6:i386
yes|apt-get install g++
yes|apt-get install openjdk-8-jdk
update-alternatives --config java
mkdir /usr/local/android
mkdir /usr/local/android/sdk
mkdir /usr/local/android/sdk/cmdline-tools
cd /usr/local/android/sdk/cmdline-tools
apt-get install wget
wget "https://dl.google.com/android/repository/commandlinetools-linux-6609375_latest.zip"
yes|apt-get install unzip
unzip commandlinetools-linux-6609375_latest.zip
echo 'export JAVA_HOME=$(update-alternatives --query javac | sed -n -e "s/Best: *\(.*\)\/bin\/javac/\1/p")' >> ~/.bashrc
echo 'export ANDROID_HOME="/usr/local/android/sdk/"' >> ~/.bashrc
echo 'export PATH="${PATH}:${ANDROID_HOME}tools/:${ANDROID_HOME}platform-tools/"' >> ~/.bashrc
echo 'ANDROID_HOME=/usr/local/android/sdk' >> ~./bashrc
/usr/local/android/sdk/cmdline-tools/tools/bin/sdkmanager "tools" "emulator" "platform-tools" "platforms;android-28" "build-tools;28.0.3" "extras;android;m2repository" "extras;google;m2repository"
/usr/local/android/sdk/cmdline-tools/tools/bin/sdkmanager "system-images;android-25;google_apis;x86" 
/usr/local/android/sdk/cmdline-tools/tools/bin/avdmanager create avd -n test -k "system-images;android-25;google_apis;x86" 
npm install nativescript -g --unsafe-perm
tns doctor