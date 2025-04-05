# qubes-salt-examples
The user configures their main Template VM how they want it, including installing packages and other customization. If they are using multiple templates, or if they switch to a new Template VM, their changes are lost. The solution is to use SALT.
The problem

Most users are not familiar with SALT and, while the Qubes SALT guide is a good introduction, it can still take hours to work out how to use it.

Furthermore, I want to back up these SALT files, so they need to be in the home directory. The solution I have for this is a directory ~/fs/srv/salt and a script to copy everything under ~/fs/ to the respective location under /.

-@zaz

# The solution

We're working on that...
https://github.com/QubesOS/qubes-issues/issues/8218

-@zaz & @kennethrrosen
