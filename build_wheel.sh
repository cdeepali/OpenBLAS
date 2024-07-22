set -xe

mkdir -p local/openblas
mkdir -p dist

python  -m pip install wheel
cp -R build/* local/openblas/
rm -rf local/openblas/bin

rm -rf dist/*
python -m pip wheel -w dist -vv .
