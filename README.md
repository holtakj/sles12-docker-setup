# sles12-docker-setup

## Instalation
1(a). (NEW INSTALL ONLY) Please execute this snippet in the console in order to download the program:

```
sudo wget -O - https://raw.githubusercontent.com/holtakj/sles12-docker-setup/master/install.sh | sudo bash
```

1(b). (UPDATE FROM OLDER INSTALL - NOT NEEDED ON NEW INSTALL) Run the update script: 
```
cd sles12-docker-setup.git
sudo update.sh 
```

2. Change directory
```
cd sles12-docker-setup.git
```

3. In the next step we will add some backport repositories and install ansible.
Execute this script and follow onscreen instructions:

```
sudo sles12sp3/prepare.sh 
```
