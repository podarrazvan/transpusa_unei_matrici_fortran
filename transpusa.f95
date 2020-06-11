program transpusa


integer,allocatable,save :: A(:,:), AT(:,:)
integer:: l,c,i,j
open(1, file="date.text",status="old")
open(2, file="rezultat.text", status="unknown")

!citim liniile si coloanele 
read(1,*)l,c
!alocam spatiu matricii si transpusei
allocate(A(l,c))
allocate(AT(c,l))
!adaugam numerele in matrice
do i = 1, l
	read(1,*) (A(i,j),j=1,c)

enddo
write(*,*)"Matricea " , A
do i = 1, l
	do j = 1, c
	AT(j,i) = A(i,j)
	enddo
enddo
write(2,*)"Matricea " , A
write(2,*)"Transpusa este " , AT

end program 
