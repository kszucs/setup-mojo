set -e

VERSION=$1

curl -s https://get.modular.com | sh -

modular auth test
modular install nightly/mojo --install-version $VERSION

echo "MODULAR_HOME=/home/runner/.modular" >> $GITHUB_ENV
echo "PATH=$PATH:/home/runner/.modular/pkg/packages.modular.com_nightly_mojo/bin" >> $GITHUB_ENV
