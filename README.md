# Github Action for setting up Mojo

Quick and dirty Github Action for setting up Mojo.

Usage:

```yaml
name: Test Setup Mojo Action

on: [push]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Setup Mojo
      uses: kszucs/setup-mojo@main
      with:
        version: '2024.7.1805'
    - name: Verify Mojo installation
      run: |
        mojo --version
        echo "Modular Home: $MODULAR_HOME"
```

TODOs:
- [ ] Prefix the installation path with the version
- [ ] Bake in caching to speed up the installation
- [ ] Test other platforms
