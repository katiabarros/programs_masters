!Este programa calcula a m‚dia anual da TOC e as m‚dias mensais para cada ano
program medias_mensais
implicit none

integer::i,j,k,n
integer,parameter::x=13870,y=38
real,dimension(38)::media
real::soma

integer,dimension(x)::ano,dia
real,dimension(x)::toc

integer,dimension(y)::m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12
real,dimension(y)::nedia1,nedia2,nedia3,nedia4,nedia5,nedia6
real,dimension(y)::nedia7,nedia8,nedia9,nedia10,nedia11,nedia12
real,dimension(y)::sona1,sona2,sona3,sona4,sona5,sona6
real,dimension(y)::sona7,sona8,sona9,sona10,sona11,sona12
real,dimension(x)::jan,fev,mar,abr,mai,jun,jul,ago,set,oct,nov,dez

open(10,file='serie_diaria.txt',status='old')
open(20,file='medias_anuais.txt',status='unknown')
open(40,file='medias_mensais.txt',status='unknown')

do i=1,x
read(10,*)dia(i),ano(i),toc(i)
enddo


!media anual
j=1978
200 continue


do k=1,38
soma=0
media(k)=0
n=0
do i=1,x
	if (ano(i)==j) then
	if (toc(i)/=-9999) then
	soma=soma+toc(i)
	n=n+1
	endif
	endif
enddo

media(k)=soma/n
write(20,*)j,media(k)
j=j+1
enddo

if (j<2016) then
goto 200
endif



!media mensal anual
j=1978
400 continue

do k=1,38
sona1(k)=0
nedia1(k)=0
m1(k)=0
sona2(k)=0
nedia2(k)=0
m2(k)=0
sona3(k)=0
nedia3(k)=0
m3(k)=0
sona4(k)=0
nedia4(k)=0
m4(k)=0
sona5(k)=0
nedia5(k)=0
m5(k)=0
sona6(k)=0
nedia6(k)=0
m6(k)=0
sona7(k)=0
nedia7(k)=0
m7(k)=0
sona8(k)=0
nedia8(k)=0
m8(k)=0
sona9(k)=0
nedia9(k)=0
m9(k)=0
sona10(k)=0
nedia10(k)=0
m10(k)=0
sona11(k)=0
nedia11(k)=0
m11(k)=0
sona12(k)=0
nedia12(k)=0
m12(k)=0

do i=1,x
	if (ano(i)==j) then
	if (toc(i)/=-9999) then
	!janeiro
	if (dia(i)>=1 .and. dia(i)<=31) then
	sona1(k)=sona1(k)+toc(i)
	m1(k)=m1(k)+1
	endif
	!fevereiro
	if (dia(i)>=32 .and. dia(i)<=59) then
	sona2(k)=sona2(k)+toc(i)
	m2(k)=m2(k)+1
	endif
	!mar‡o
	if (dia(i)>=60 .and. dia(i)<=90) then
	sona3(k)=sona3(k)+toc(i)
	m3(k)=m3(k)+1
	endif
	!abril
	if (dia(i)>=91 .and. dia(i)<=120) then
	sona4(k)=sona4(k)+toc(i)
	m4(k)=m4(k)+1
	endif
	!maio
	if (dia(i)>=121 .and. dia(i)<=151) then
	sona5(k)=sona5(k)+toc(i)
	m5(k)=m5(k)+1
	endif
	!junho
	if (dia(i)>=152 .and. dia(i)<=181) then
	sona6(k)=sona6(k)+toc(i)
	m6(k)=m6(k)+1
	endif
	!julho
	if (dia(i)>=182 .and. dia(i)<=212) then
	sona7(k)=sona7(k)+toc(i)
	m7(k)=m7(k)+1
	endif
	!agosto
	if (dia(i)>=213 .and. dia(i)<=243) then
	sona8(k)=sona8(k)+toc(i)
	m8(k)=m8(k)+1
	endif
	!setembro
	if (dia(i)>=244 .and. dia(i)<=273) then
	sona9(k)=sona9(k)+toc(i)
	m9(k)=m9(k)+1
	endif
	!outubro
	if (dia(i)>=274 .and. dia(i)<=304) then
	sona10(k)=sona10(k)+toc(i)
	m10(k)=m10(k)+1
	endif
	!novembro
	if (dia(i)>=305 .and. dia(i)<=334) then
	sona11(k)=sona11(k)+toc(i)
	m11(k)=m11(k)+1
	endif
	!dezembro
	if (dia(i)>=335 .and. dia(i)<=366) then
	sona12(k)=sona12(k)+toc(i)
	m12(k)=m12(k)+1
	endif
	endif
	endif
enddo
nedia1(k)=sona1(k)/m1(k)
nedia2(k)=sona2(k)/m2(k)
nedia3(k)=sona3(k)/m3(k)
nedia4(k)=sona4(k)/m4(k)
nedia5(k)=sona5(k)/m5(k)
nedia6(k)=sona6(k)/m6(k)
nedia7(k)=sona7(k)/m7(k)
nedia8(k)=sona8(k)/m8(k)
nedia9(k)=sona9(k)/m9(k)
nedia10(k)=sona10(k)/m10(k)
nedia11(k)=sona11(k)/m11(k)
nedia12(k)=sona12(k)/m12(k)
write(40,45)nedia1(k),nedia2(k),nedia3(k),nedia4(k),nedia5(k),nedia6(k),nedia7(k),nedia8(k),nedia9(k),nedia10(k),nedia11(k),&
&nedia12(k)
45 	format (12(f7.3,2x))
j=j+1
enddo

if (j<2016) then
goto 400
endif



end
