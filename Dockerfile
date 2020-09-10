FROM amazonlinux:latest AS stage01

RUN yum update -y && \
    yum install -y gcc-gfortran gdb make aws-cli && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    mkdir -p /data

COPY Makefile run_fortran.sh FortranRPW.f90  /fortran/

WORKDIR /fortran/
RUN make FortranRPW

# configure the container to run the hello world executable by default
ENTRYPOINT ["./run_fortran.sh"]
