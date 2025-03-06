# Copy to VM

Each directory inside this one corresponds to a VM. The files within
each directory correspond to files on that VM. Files modified here will
be copied to the VM.

> [!WARNING]
> Files created here will overwrite files on the VM.

For example, if you create `fedora-41-xfce/etc/profile.d/aliases.sh`,
that file will be copied to `/etc/profile.d/aliases.sh` on your
fedora-41-xfce template, making your command-line shortcuts available
on all Qubes based on fedora-41-xfce.
