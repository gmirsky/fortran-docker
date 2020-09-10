#!/bin/bash
echo "running fortran"
./FortranRPW
echo "fortran complete"
echo "printing output file"
cat /data/FortranDataOutput.txt
