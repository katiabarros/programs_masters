!Este programa cria uma s‚rie di ria com os dados dos 4 sat‚lites

program criar_serie
implicit none

integer,parameter:: x=13870

integer,dimension(x)::dia,ano
real,dimension(x)::n7,m3,ep,au,var
integer::i

open(10,file='tudo.txt',status='unknown')
open(20,file='serie_diaria.txt',status='unknown')

do i=1,x
read(10,*)dia(i),ano(i),n7(i),m3(i),ep(i),au(i)
enddo

do i=1,x
if (n7(i)/=-9999 .and. m3(i)==-9999 .and. ep(i)==-9999 .and. au(i)==-9999) then
 var(i)=n7(i)
endif
if (n7(i)==-9999 .and. m3(i)/=-9999 .and. ep(i)==-9999 .and. au(i)==-9999) then
 var(i)=m3(i)
endif
if (n7(i)/=-9999 .and. m3(i)/=-9999 .and. ep(i)==-9999 .and. au(i)==-9999) then
 var(i)=(n7(i)+m3(i))/2
endif

if (n7(i)==-9999 .and. m3(i)==-9999 .and. ep(i)/=-9999 .and. au(i)==-9999) then
 var(i)=ep(i)
endif
if (n7(i)==-9999 .and. m3(i)==-9999 .and. ep(i)==-9999 .and. au(i)/=-9999) then
 var(i)=au(i)
endif
if (n7(i)==-9999 .and. m3(i)==-9999 .and. ep(i)/=-9999 .and. au(i)/=-9999) then
 var(i)=(ep(i)+au(i))/2
endif

if (n7(i)==-9999 .and. m3(i)==-9999 .and. ep(i)==-9999 .and. au(i)==-9999) then
 var(i)=-9999
endif

enddo

do i=1,x
write(20,*)dia(i),ano(i),var(i)
enddo

end
