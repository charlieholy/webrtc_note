ubuntu22

sudo apt update
sudo apt install -y \
git python3 curl pkg-config ninja-build build-essential \
libasound2-dev libpulse-dev libx11-dev libxext-dev libxi-dev \
libxrandr-dev libxcursor-dev libxdamage-dev libxcomposite-dev \
libxfixes-dev libxrender-dev libxinerama-dev libatk1.0-dev \
libatk-bridge2.0-dev libcups2-dev libdbus-1-dev libexpat1-dev \
libfontconfig1-dev libfreetype6-dev libpng-dev libssl-dev \
libudev-dev libvulkan-dev libglib2.0-dev

git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=$PWD/depot_tools:$PATH

mkdir webrtc-checkout
cd webrtc-checkout
fetch --nohooks webrtc
gclient sync
