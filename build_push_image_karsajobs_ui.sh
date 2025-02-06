# Build image dengan nama karsajobs-ui dengan tag latest
docker build -t karsajobs-ui:latest .
 
# Menambahkan tag untuk Github Packages
docker tag karsajobs-ui:latest ghcr.io/gamalama/karsajobs-ui:latest
 
# Login ke Github Packages
echo $CR_PAT | docker login ghcr.io -u gamalama --password-stdin
 
# Push image ke Github Packages
docker push ghcr.io/gamalama/karsajobs-ui:latest
