# Tools That use GPG

- https://github.com/mozilla/sops
- https://github.com/voxpupuli/hiera-eyaml
- https://github.com/peff/pass
- https://www.passwordstore.org/
- https://www.vaultproject.io/docs/concepts/pgp-gpg-keybase.html
- https://keybase.io/
- https://github.com/chrissimpkins/crypto


## Libraries
- https://pythonhosted.org/python-gnupg/
- http://php.net/manual/en/ref.gnupg.php
- https://keybase.io/kbpgp

### eyaml
Eyaml is a tool you can use with puppet to encrypt secrets with gpg.  

An aside, I could not get `eyaml` to work with Windows CLI nor with Babun/cygwin. 
To workaround that limitation, I used Windows 10 WSL Bash.

```shell
sudo apt-get install -y build-essential libgpg-error libassuan0 gpgme
sudo apt-get install -y gnupg-agent libgpgme11-dev
gem install eyaml hiera-eyaml-gpg gpgme

# If you run into errors try
# gem install gpgme --use-system-libraries
```

- https://lzone.de/blog/Hiera+EYAML+GPG+Troubleshooting
- https://www.madboa.com/geek/gpg-quickstart/
