# Mem-build image dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melihat daftar image
docker image ls

# Menambahkan tag ghcr.io/fakhrylinux/item-app:v1
docker tag item-app:v1 ghcr.io/gamalama/item-app:v1

# Login ke Github Packages
echo $CR_PAT | docker login ghcr.io -u gamalama --password-stdin

# Push image ke Github Packages
docker push ghcr.io/gamalama/item-app:v1