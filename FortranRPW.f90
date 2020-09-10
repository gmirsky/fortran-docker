! Small generic program that will read from a file; do something and then print to a file.
!
! Input file:    FortranDataInput.txt
! Outputs file:  FortranDataOutput.txt.txt
!
program FortranDataRPWF90
  real, dimension(:), allocatable :: x !array that we will read into
  integer :: n 
  write(*,*) "Starting the container process!"
  write(*,*) "Starting to read file."
  open(unit=99, file='/data/FortranDataInput.txt', status='old', action='read')
  read(99,*) n !the first element in the file is the number of elements in the array 
  allocate(x(n))
  read(99,*) x !read in the array from the file 
  !loop over the array and multiply each element by Pi.
  do i=0,n
   x(i) = x(i) * 3.14159265359
  end do
  write(*,*) "Done with my calculations!"
  open(unit=89, file='/data/FortranDataOutput.txt', status='replace', action='write')
  write(89,*)x
  write(*,*) "Results successfully written. The end!"
end program FortranDataRPWF90
