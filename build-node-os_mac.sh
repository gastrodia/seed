ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
cd /usr/local/
git checkout 2b7b4b3 Library/Formula/qemu.rb
brew install https://raw.github.com/Homebrew/homebrew-dupes/master/apple-gcc42.rb
brew install pkg-config
brew install qemu --env=std --cc=gcc-4.2
 
