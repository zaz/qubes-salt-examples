# qubes-salt-examples
The user configures their main Template VM how they want it, including installing packages and other customization. If they are using multiple templates, or if they switch to a new Template VM, their changes are lost. The solution is to use SALT.
The problem

Most users are not familiar with SALT and, while the Qubes SALT guide is a good introduction, it can still take hours to work out how to use it.

Furthermore, I want to back up these SALT files, so they need to be in the home directory. The solution I have for this is a directory ~/fs/srv/salt and a script to copy everything under ~/fs/ to the respective location under /. I do see you have a file /srv/salt/qubes/user-dirs.sls that may be designed to fix this problem, but I'm not sure how it works.

I've spent many hours trying to get this to work, and helping other users who have related issues.

-@zaz

# The solution

We're working on that...
-@zaz & @kennethrrosen
