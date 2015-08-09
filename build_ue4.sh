sudo add-apt-repository ppa:tldm217/tahutek.net
sudo apt-get update
sudo apt-get install apt-fast

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update
echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main" | sudo tee -a /etc/apt/sources.list.d/mono-xamarin.list

sudo apt-get install build-essential
sudo apt-get install mono-complete

sudo apt-get install mono-gmcs -y
sudo apt-get install mono-xbuild -y
sudo apt-get install mono-dmcs -y
sudo apt-get install libmono-corlib4.0-cil -y
sudo apt-get install libmono-system-data-datasetextensions4.0-cil -y
sudo apt-get install libmono-system-web-extensions4.0-cil -y
sudo apt-get install libmono-system-management4.0-cil -y
sudo apt-get install libmono-system-xml-linq4.0-cil -y
sudo apt-get install cmake -y
sudo apt-get install dos2unix -y
sudo apt-get install clang -y
sudo apt-get install xdg-user-dirs -y

./Setup.sh
./GenerateProjectFiles.sh
make SlateViewer
make ShaderCompileWorker UnrealLightmass UnrealPak UE4Editor
