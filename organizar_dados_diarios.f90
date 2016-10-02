!Este programa coloca todos os dados de todos os sat‚lites no mesmo formato para serem trabalhados
program diario
implicit none

integer::i,j
integer,parameter::x=13870,y=625

integer,dimension(x)::dia0,ano0
real,dimension(x)::toc

integer,dimension(y)::dia1,mes1,ano1,doy1
real,dimension(y)::toc1,sza,dis

open (10,file='data.txt', status='old')
open (20,file='d_m3.txt', status='old')
open (30,file='resultado_m3.txt', status='unknown')

!lendo
do i=1,x
read(10,*)dia0(i),ano0(i)
enddo

do j=1,y
read(20,*)doy1(j),ano1(j),toc1(j)
enddo

!fazendo
do i=1,x
 do j=1,y
   if (dia0(i)==doy1(j) .and. ano0(i)==ano1(j))then
   toc(i)=toc1(j)
   endif
 enddo
enddo

do i=1,x
 if (toc(i)==0.00) then
  toc(i)=-9999
  endif
write(30,*)dia0(i),ano0(i),toc(i)
enddo

end
