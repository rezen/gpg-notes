# Best Practices

## General
- Use key sizes of 3kb+
- Some people say 4Kb keys are unnecessaily large and too slow to use
- Use a subkey
- Add a passphrase
- Add an expiration date
- Generate a revocation certificate

## Storage
- Keep revocation certificates highly available, confidential
- Keep your master key highly available (but not necessarily "hot"), highly confidential
- Keep your subkeys available, confidential
- Consider keeping your master keypair offline
- Consider experimenting with smartcard key storage (e.g. Yubikey)