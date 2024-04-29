# ClockworkPi-apt
 ak-rex's ClockworkPi kernel repository

To add repo:

wget -O - https://raw.githubusercontent.com/ak-rex/ClockworkPi-apt/main/bookworm/KEY.gpg | sudo apt-key add - 

or

wget -q -O- https://raw.githubusercontent.com/ak-rex/ClockworkPi-apt/main/bookworm/KEY.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/ak-rex.gpg

sudo add-apt-repository -y "deb [arch=arm64] https://raw.githubusercontent.com/ak-rex/ClockworkPi-apt/main/bookworm stable main"