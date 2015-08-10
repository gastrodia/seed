wget https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz

tar zxvf emsdk-portable.tar.gz

cd emsdk-portable

# Fetch the latest registry of available tools.
./emsdk update

# Download and install the latest SDK tools.
./emsdk install latest

# Make the "latest" SDK "active"
./emsdk activate latest
