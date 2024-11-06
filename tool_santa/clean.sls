# vim: ft=sls

{#-
    *Meta-state*.

    Removes `santa`. Configuration profile removal needs to be performed manually.
#}

include:
  # profile deinstallation needs to be performed manually
  # - .config.clean
  - .package.clean
