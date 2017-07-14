# Code, Package & File Signing

Validating with a file or package integrity with md5 or sha256 is incomplete. 
An attacker could change that information being presented to a user via MITM attack, 
or worse yet, if they take over your server and replace that info. 

With gpg, you can sign files and users can verify the signature to ensure the file
has not been manipulated by someone else in transit.

- https://www.davidfischer.name/2012/05/signing-and-verifying-python-packages-with-pgp/
- https://www.apache.org/dev/release-signing.html
- https://gist.github.com/fernandoaleman/1376720
- https://cran.r-project.org/web/packages/gpg/vignettes/intro.html
- https://access.redhat.com/security/team/key

## Package Signing
- http://giovannitorres.me/how-to-setup-an-rpm-signing-key.html
- https://wiki.archlinux.org/index.php/Pacman/Package_signing
- https://purplefloyd.wordpress.com/2009/02/05/signing-deb-packages/
- https://blog.packagecloud.io/eng/2014/10/28/howto-gpg-sign-verify-deb-packages-apt-repositories/

## Commit Signing
- https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work
- https://github.com/blog/2144-gpg-signature-verification
- https://confluence.atlassian.com/sourcetreekb/setup-gpg-to-sign-commits-within-sourcetree-765397791.html
- https://harryrschwartz.com/2014/11/01/automatically-signing-your-git-commits.html
- https://medium.com/@timmywil/sign-your-commits-on-github-with-gpg-566f07762a43
- https://blog.erincall.com/p/signing-your-git-commits-with-gpg
