{% set vm = grains['id'] %}

/:
  file.recurse:
    - source: salt://copy-to/vm/{{ vm }}/
    # make any parent directories that don't exist
    - makedirs: True
    # copy empty directories
    - include_empty: True
    # copy each file's permissions
    - file_mode: keep
    # copy each symlink's permissions
    - sym_mode: keep

    # copy symlinks themselves rather than what they reference
    # (note that while this is commented, sym_mode: keep does nothing)
#     - keep_symlinks
    # if a file or directory is obstructing symlink creation, remove it
#     - force_symlinks
    # don't replace any file that already exists
#    - replace: False
    # render copied files using Jinja templating engine
#    - template: jinja
