# Installation
Most platforms have a package you can quickly install. 
If you really want to build the tool from source ... go ahead.

You can find binaries for your platform here
https://www.gnupg.org/download/

## Linux

You can get the source and build it yourself https://www.gnupg.org/download/

#### RHEL
```shell
sudo yum install -y gnupg
gpg --version
```

#### Debian
```shell
sudo apt-get install -y gpa gnupg2 gnupg-agent rng-tools
sudo sed -i -e 's|#HRNGDEVICE=/dev/hwrng|HRNGDEVICE=/dev/urandom|' /etc/default/rng-tools
sudo service rng-tools start
gpg --version
```

#### Arch
```shell
pacman -S gnupg
gpg --version
```
https://wiki.archlinux.org/index.php/GnuPG


#### Gentoo
Sorry, no happy one-liners, just a link!  
https://wiki.gentoo.org/wiki/GnuPG#Installation


### GPG Agent
GPG agent on the cli!

```shell
# Get gpg agent working on Debian
sudo apt-get install -y gnupg-agent pinentry-curses
echo 'export GPG_TTY=`tty`' >> ~/.bashrc
echo export GPG_AGENT_INFO="$HOME/.gnupg/S.gpg-agent:\$(pgrep gpg-agent):1" >> ~/.bashrc
eval $(gpg-agent --daemon --pinentry-program /usr/bin/pinentry)
test -f ~/.gnupg/gpg-agent.conf || touch ~/.gnupg/gpg-agent.conf
echo pinentry-program /usr/bin/pinentry >> ~/.gnupg/gpg-agent.conf
gpg-connect-agent reloadagent /bye
source ~/.bashrc

# Validate agent is working
echo tell no one > secret.txt
gpg -e -u "username@email.com" -r "username@email.com" secret.txt
gpg -d secret.txt.gpg
```

- https://gpgtools.tenderapp.com/discussions/problems/24177-how-to-have-gpg-agent-prompt-for-password-on-tty
- https://superuser.com/questions/520980/how-to-force-gpg-to-use-console-mode-pinentry-to-prompt-for-passwords


## Mac
There is a GUI installer for GPGTools you can use 
https://gpgtools.org/


If you are more of a `brew` fan  

```shell
brew install gnupg
gpg --version
```

## Windows
There is a GUI installer for GPG4Win  you can use 
https://www.gpg4win.org/


If you are hip with windows CLI and use [Chocolately](https://chocolatey.org) you can install via the CLI  

```shell
choco install gpg4win
```