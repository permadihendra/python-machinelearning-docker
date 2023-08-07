My Dockerfile build image

Build the Image
```
docker build -t python-machinelearning -f Dockerfile .
```

Create and run the container
```
docker run --name jupyter --hostname jupyter -p 9000:9000 -v "$(pwd):/app" python-machinelearning
```
