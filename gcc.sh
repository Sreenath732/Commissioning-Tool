cd /home/sreenath/Documents/git/Sreenath-Commission
sudo apt-get install libpqxx-4.0v5
sudo apt-get install libpqxx-dev
sudo apt-get install libjsoncpp-dev
sudo apt-get install libgcrypt-dev
sree=$(g++ commissioning-server.cpp -lpqxx -lpq -std=c++14 -o commissioning-server -static-libstdc++ -ljsoncpp -lcrypt)
echo $sree

