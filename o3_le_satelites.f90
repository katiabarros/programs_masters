program le_sat
implicit none

integer::i
integer,parameter:: x=4193
integer,dimension(x)::ano,mes,dia,hora,minu,seg,xx,year,doy,sec,orbita,cctp,soi
character,dimension(x)::T,Z
real,dimension(x)::mjd,lat,lon,dist,sza,ozone,o3b,sur,cl,cloud,ref,ai

open(10,file='aura.txt',status='old')
open(20,file='aura_n.txt',status='unknown')
open(30,file='aura_teste.txt',status='unknown')

do i=1,x
!read(10,'(i4,2i2,a1,3i2,i3,a1,f14.7,i6,i5,i11,i8,i6,2f8.3,f7.2,2f9.3,3f10.3,f11.3,2f10.3,i8)')ano(i),mes(i),dia(i),&
read(10,'(i4,2i2,a1,3i2,i3,a1,f14.6,i6,i5,i11,i8,i6,2f8.2,f7.1,2f9.2,3f10.2,f11.3,2f10.2,i8)')ano(i),mes(i),dia(i),&
& T(i),hora(i),minu(i),seg(i),xx(i),Z(i),mjd(i),year(i),doy(i),sec(i),orbita(i),cctp(i),lat(i),lon(i),&
& dist(i),sza(i),ozone(i),o3b(i),sur(i),cl(i),cloud(i),ref(i),ai(i),soi(i)
write(*,*)ano(i)
enddo

do i=1,x
 if (doy(i)/=doy(i+1)) then
  write(20,*)dia(i),mes(i),ano(i),doy(i),dist(i),ozone(i),sza(i)
  endif
enddo

do i=1,x
  if (doy(i)==doy(i+1)) then
 write(30,*) dia(i),mes(i),ano(i),doy(i),dist(i),ozone(i),sza(i)
 endif
enddo

end
