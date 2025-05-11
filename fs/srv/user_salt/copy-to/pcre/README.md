# Copy to VM

/Perl-compatible regex (PCRE) version/

Each directory inside this one corresponds to a regex. Any VM that matches that
regex will copy the files within that directory recursively to its root (`/`).

> [!WARNING]
> Files created here will overwrite files on the VM.

For example, if you create `^fedora-4[0-9]-xfce$/etc/profile.d/aliases.sh`,
that file will be copied to `/etc/profile.d/aliases.sh` on your fedora-40-xfce
template, fedora-41-xfce, fedora-42-xfce, etc., making your command-line
shortcuts available on all Qubes based on those templates.

Be sure to include `^` and `$`!

Note that all files will be created with mode 0755. If you want a different
mode, you will have to use a separate SALT state. Due to `qvm-copy` not copying
permissions, SALT's `file_mode: keep` does not work.

## Some useful regexes

1. All of the standard Linux template VMs:
```
^(fedora-4[0-9]|debian-1[0-9])(-xfce|-minimal|)$
```
