# Fortran Docker Container

## Description

Sample Docker Container to encapsulate legacy Fortran code.

### Build the container

```bash
docker build -t fortranrpw .
```

### Run the container

```bash
docker run -v  /myLocalDirectory:/data fortranrpw
```

### Output should look like this

```bash
$ docker run -v /Users/gmirsky/fortran-docker:/data fortranrpw
running fortran
 Starting the container process!
 Starting to read file.
 Done with my calculations!
 Results successfully written. The end!
fortran complete
printing output file

real  0m0.015s
user  0m0.002s
sys   0m0.001s

  31.4159279    28.5884953    25.7610607    22.9336281    20.1061935    17.2787609    14.4513264    11.6238937    6.59734440    3.45575213
$
```
