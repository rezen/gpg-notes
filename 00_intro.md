# Introduction
- https://en.wikipedia.org/wiki/Pretty_Good_Privacy

## Web of Trust
- https://www.linux.com/learn/pgp-web-trust-core-concepts-behind-trusted-communication
- https://www.rubin.ch/pgp/weboftrust.en.html
- https://www.youtube.com/watch?v=FmVLCsPVc1g
- https://pthree.org/2014/12/31/keybase-and-the-pgp-web-of-trust/
- https://en.wikipedia.org/wiki/Pretty_Good_Privacy#Web_of_trust

## How Signing Works
- The data gets symmetrically encrypted with a random AES key
- The AES key gets encrypted "to" the recipients' keys, one at a time
- The AES key is thrown away
- Everything gets bundled up


## Generate your key
`gpg --gen-key`  

*Options*  

- Size `3072` or `4096`
- Expires in `1y`
- Create a passphrase

## Basics
```shell
# Let us make sure gpg is installed!
gpg --version

# Check out the available commands
gpg --help

# Generate a key for yourself to get started with
gpg --gen-key

# Make sure to immediately generate revocation certificate
gpg --output revoke_username-email-com.asc --gen-revoke username@email.com

# Ouput your public key for sharing
gpg --armor --export username@email.com

# Create a secret
echo '!! SECRET !!' > secret.txt

# Encrypt a secret
gpg --encrypt --local-user "username@email.com" --recipient "username@email.com" secret.txt
gpg -e -u "username@email.com" -r "otherusername@email.com" secret.txt

# Descrypt that secret!
gpg --output plain-secret.txt --decrypt secret.txt.gpg
```


## Sharing Keys
```shell
gpg --import otheruser@email.com.asc
```

## Signing
With file or message signing with gpg you can validate the sender
sent the message as well as validate that the message contents have
not changed.

This is also useful for checking if code packages have been tampered with
before arrival.

Docker for example providers a GPG key they use to sign their releases. When you download
a binary, you can check the signature and verify it matches the package.

https://docs.docker.com/engine/installation/linux/ubuntu/#install-using-the-repository

```shell
# Sign a secret, with binary format
gpg --sign secret.txt
stat secret.txt.gpg

# Sign a secret, with asc format
gpg --clearsign secret.txt
cat secret.txt.asc

# Have the signature detached from the file
gpg --detach-sig secret.txt
stat secret.txt.sig
gpg --verify secret.txt.sig secret.txt
```

## Subkeys
- https://www.void.gr/kargig/blog/2013/12/02/creating-a-new-gpg-key-with-subkeys/
- https://alexcabal.com/creating-the-perfect-gpg-keypair/
- http://www.connexer.com/articles/openpgp-subkeys

## Asides
- https://blog.filippo.io/giving-up-on-long-term-pgp/
- http://secushare.org/PGP


## Contributors
- Justin Stevens
- Matt Trimble
- Steve Hollingsworth
- Andres Hermosilla