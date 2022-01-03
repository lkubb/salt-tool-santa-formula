# Santa Formula
Sets up and configures Santa binary authorization system.

## Usage
Applying `tool-santa` will make sure `santa` is configured as specified.

### Dependencies
If you want to apply configuration, this formula needs to be able to install profiles (`.mobileconfig`). Default salt does not entail that functionality and Apple has heavily limited the automatic installation of these profiles outside from MDM in the last years (especially since macOS 10.14 Mojave). I adapted a semi-automatic workaround inside a custom execution module and state called `macprofile` found in [salt-tool-macos-formula](https://github.com/lkubb/salt-tool-macos-formula). You will still need to manually approve the installation of the profile within 30 seconds.

## Configuration
### Pillar
Even though this formula is namespaced in `tool`, it is a system-wide package and does not need per-user configuration.

#### Formula-specific
```yaml
tool:
  santa:
    config:
      ClientMode: 1 # Monitor
```

## References
- https://santa.dev/deployment/configuration.html
