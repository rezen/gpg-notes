# Best Practices

Below touches on some quick points on good practices but check out the articles below
for more in-depth guides.

## General
- Use key sizes of 3kb+
- Some people say 4Kb keys are unnecessaily large and too slow to use
- Use a subkey
- Add a passphrase
- Add an expiration date for less than 2 years
- Generate a revocation certificate

## Storage
- Keep revocation certificates highly available, confidential
- Keep your master key highly available (but not necessarily "hot"), highly confidential
- Keep your subkeys available, confidential
- Consider keeping your master keypair offline
- Consider experimenting with smartcard key storage (e.g. Yubikey)


- https://spin.atomicobject.com/2013/11/24/secure-gpg-keys-guide/
- https://framasphere.org/posts/1733780
- https://riseup.net/en/security/message-security/openpgp/best-practices