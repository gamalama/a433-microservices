# Build image dengan nama karsajobs dan tag latest
docker build -t karsajobs:latest .
 
# Menambahkan tag untuk Github Packages
docker tag karsajobs:latest ghcr.io/gamalama/karsajobs:latest
 
# Login ke Github Packages
echo $CR_PAT | docker login ghcr.io -u gamalama --password-stdin
 
# Push image ke Github Packages
docker push ghcr.io/gamalama/karsajobs:latest
