{% set vm = grains['id'] %}
{% set dirs = salt['cp.list_master_dirs']('user', 'copy-to/pcre') %}
{% set matching_dirs = [] %}
# for each dir in copy-to/pcre/
{% for dir in dirs if dir.startswith('copy-to/pcre/') and dir.count('/') == 2 %}
  # treat the dir name as a regex pattern
  {% set pattern = (dir.split('/')[2]) %}
  # if the current VM matches pattern, add it to the list
  {% if salt['match.pcre'](pattern, vm) %}
    {% do matching_dirs.append(pattern) %}
  {% endif %}
{% endfor %}

{% for dir in matching_dirs %}
copy-to/pcre/{{ dir }}:
  file.recurse:
    - name: '/'
    - source: salt://copy-to/pcre/{{ dir }}/
    # make any parent directories that don't exist
    - makedirs: True
    # copy empty directories
    - include_empty: True
    # make copied files accessible to all users
    - file_mode: 755
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
{% endfor %}
