#!/bin/bash
echo "running fortran"
time ./FortranRPW
echo "fortran complete"
echo "printing output file"
cat /data/FortranDataOutput.txt
