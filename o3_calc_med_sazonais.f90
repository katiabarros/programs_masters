!This program separates the times series into seasons and calculate the seazonal mean to each year
program separar
implicit none

integer::i,j,k
integer,parameter::z=13870
real,dimension(z)::toc
integer,dimension(z)::dia,ano

real,dimension(37)::somaver,somaout,somainv,somapri,mediaver,mediaout,mediainv,mediapri
real,dimension(37)::nver,ninv,nout,npri
real,dimension(144)::x

open(10,file='serie_diaria.txt',status='old')
open(20,file='verao.txt',status='unknown')
open(30,file='outono.txt',status='unknown')
open(40,file='inverno.txt',status='unknown')
open(50,file='primavera.txt',status='unknown')
open(60,file='medsaz.txt',status='unknown')

do i=1,z
read(10,*)dia(i),ano(i),toc(i)
enddo

!separando dados por esta‡Æo
do i=1,z
if (toc(i)/=-9999.000)then
	if (dia(i)<=59 .or. dia(i)>=335) then
   	write(20,*)dia(i),ano(i),toc(i)
   	endif

	if (dia(i)>=60 .and. dia(i)<=151) then
	write(30,*)dia(i),ano(i),toc(i)
	endif

	if (dia(i)>=152 .and. dia(i)<=243) then
	write(40,*)dia(i),ano(i),toc(i)
	endif

	if (dia(i)>=244 .and. dia(i)<=334) then
	write(50,*)dia(i),ano(i),toc(i)
	endif
endif
enddo

!calculando m‚dia sazonal por ano
j=1979
200 continue
do k=1,37
nver(k)=0
ninv(k)=0
nout(k)=0
npri(k)=0
somaver(k)=0
somainv(k)=0
somaout(k)=0
somapri(k)=0
mediaver(k)=0
mediainv(k)=0
mediaout(k)=0
mediapri(k)=0

do i=1,z
if (toc(i)/=-9999.000)then
	if (ano(i)==j) then
	if (dia(i)<=59)then
	somaver(k)=somaver(k)+toc(i)
	nver(k)=nver(k)+1
		elseif (ano(i)==j-1) then
		if (dia(i)>=335)then
		somaver(k)=somaver(k)+toc(i)
		nver(k)=nver(k)+1
	endif
	endif
	endif
	if (ano(i)==j .and. dia(i)>=60 .and. dia(i)<=151) then
	somaout(k)=somaout(k)+toc(i)
	nout(k)=nout(k)+1
	endif
	if (ano(i)==j .and. dia(i)>=152 .and. dia(i)<=243) then
	somainv(k)=somainv(k)+toc(i)
	ninv(k)=ninv(k)+1
	endif
	if (ano(i)==j .and. dia(i)>=244 .and. dia(i)<=334) then
	somapri(k)=somapri(k)+toc(i)
	npri(k)=npri(k)+1
	endif
endif
enddo
mediaver(k)=somaver(k)/nver(k)
mediaout(k)=somaout(k)/nout(k)
mediainv(k)=somainv(k)/ninv(k)
mediapri(k)=somapri(k)/npri(k)
write(60,*)j,mediaver(k),mediaout(k),mediainv(k),mediapri(k)
!25 format ((i,2x),4(f7.3,2x))

j=j+1
enddo

if (j<2016)then
goto 200
endif



end



