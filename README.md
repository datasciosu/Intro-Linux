# Intro-Linux
Intro 9/21/2021

1. First clone Intro-Linux git repo into a directory by using the command
```
git clone https://github.com/datasciosu/Intro-Linux.git
```

2. Change into the git directory and build the docker image
```
cd Intro-Linux
Docker build -t intro-linux . 
```

* \-t adds a tag to the docker image build, in this case the image will be called "intro-linux"
* the "." tells docker that the "Dockerfile" is in the current working directory, in this case docker will search within "Intro-Linux" for Dockerfile
* This image has the latest ubuntu relase and some software included, it is not too large therefore the build will not take a long time. This will change depending on how much is included in the Dockerfile.

3. Launch an interactive docker container using the image we just built
```
docker run -it intro-linux
```
