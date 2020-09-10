# Fortran Docker Container

Docker Container to encapsulate legacy fortran code and to run it.

### Build the container

```
docker build -t fortranrpw .
```

### Run the container

```
docker run -v  /myLocalDirectory:/data fortranrpw
```
