git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=$PWD/depot_tools:$PATH

mkdir webrtc-checkout
cd webrtc-checkout
fetch --nohooks webrtc
gclient sync
