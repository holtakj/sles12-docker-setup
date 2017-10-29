# sles12-docker-setup

## First Instalation or  from older version
1(a). (NEW INSTALL ONLY) Please execute this snippet in the console in order to download the program:

```bash
sudo wget -O - https://raw.githubusercontent.com/holtakj/sles12-docker-setup/master/install.sh | sudo bash
```

1(b). (UPDATE FROM OLDER INSTALL - NOT NEEDED ON NEW INSTALL) Run the update script: 
```bash
cd sles12-docker-setup.git
sudo update.sh 
```

2. Change directory
```bash
cd sles12-docker-setup.git
```

3. In the next step we will add some backport repositories and install ansible.
Execute this script and follow onscreen instructions:

```bash
sudo sles12sp3/prepare.sh 
```

After this we are finally ready to start installing what we actually came to do ;-)

## Installing Services

Each service has a shell script which can be executed.

### Docker

Will install latest Docker CE version form SLES 12 SP3 Backports.

```bash
sudo sles12sp3/docker-host.sh

```


