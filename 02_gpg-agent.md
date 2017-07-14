# GPG Agent
GPG agent on the cli!

```shell
# Get gpg agent working on Debian
sudo apt-get install -y gnupg-agent pinentry-curses
echo 'export GPG_TTY=`tty`' >> ~/.bashrc
echo export GPG_AGENT_INFO="$HOME/.gnupg/S.gpg-agent:\$(pgrep gpg-agent):1" >> ~/.bashrc

eval $(gpg-agent --daemon --pinentry-program /usr/bin/pinentry)
test -f ~/.gnupg/gpg-agent.conf || touch ~/.gnupg/gpg-agent.conf
echo pinentry-program /usr/bin/pinentry >> ~/.gnupg/gpg-agent.conf
echo no-grab >> ~/.gnupg/gpg-agent.conf

# Restart the agent
gpg-connect-agent reloadagent /bye
source ~/.bashrc

# Validate agent is working
echo tell no one > secret.txt
gpg -e -u "username@email.com" -r "username@email.com" secret.txt
gpg -d secret.txt.gpg
```

- http://sudoers.org/2013/11/05/gpg-agent.html
- https://gpgtools.tenderapp.com/discussions/problems/24177-how-to-have-gpg-agent-prompt-for-password-on-tty
- https://superuser.com/questions/520980/how-to-force-gpg-to-use-console-mode-pinentry-to-prompt-for-passwords

## Agent forwarding
You want need to sign releases or commits on a remote machine. Agent forwarding allows to do exactly that!
First off you need to add your public key to the remote machine.

If you are running `ssh -V >= 6.7` you can use domain socket forwarding  
```shell
agent_socket=~/.gnupg/S-gpg-agent 
ssh -R $agent_socket:$agent_socket -o "StreamLocalBindUnlink=yes" -l username 192.168.1.9
```

- https://superuser.com/questions/161973/how-can-i-forward-a-gpg-key-via-ssh-agent
- http://code.v.igoro.us/posts/2015/11/remote-gpg-agent.html
- http://blog.ktdreyer.com/2017/06/forwarding-gpg-agent-to-container.html
