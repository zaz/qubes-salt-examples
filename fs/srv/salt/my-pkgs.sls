remove-empty-dirs:
  cmd.run:
    - name: 'cd && rmdir * ||:'

/etc/profile.d/aliases.sh:
  file.managed:
    - source: 'salt://aliases.sh'

/etc/profile.d/my.sh:
  file.managed:
    - source: 'salt://my.sh'

enable-rpmfusion-free:
  cmd.run:
    - name: dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

enable-rpmfusion-nonfree:
  cmd.run:
    - name: dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

debuginfo-install:
  cmd.run:
    - name: dnf debuginfo-install -y glibc libgcc libstdc++

my-pkgs:
  pkg.installed:
    - pkgs:
      - sbcl  # Steel Bank Common Lisp compiler
