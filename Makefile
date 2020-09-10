#simple make for FortranRPW
FortranRPW: FortranRPW.o
	gfortran -o FortranRPW FortranRPW.o
FortranRPW.o: FortranRPW.f90
	gfortran -c -g -ffree-line-length-none FortranRPW.f90
clean:
	rm -f FortranRPW.o FortranRPW.exe
#end of makefile 