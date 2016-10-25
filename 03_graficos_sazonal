clear all
close all
clc

a=load('medsaz.txt');
dp=load('dp_med.txt');
ano=a(:,1);
ver=a(:,2);
out=a(:,3);
inv=a(:,4);
pri=a(:,5);
dver=dp(:,1);
dout=dp(:,2);
dinv=dp(:,3);
dpri=dp(:,4);
anos=1979:2015;

figure
%subplot(2,2,1)
errorbar(anos,pri,dpri,'.','MarkerSize',15)
axis([1978,2016,240,310])
title('Spring','FontSize',22)
xlabel('Year','FontSize',18)
ylabel('Total ozone column (DU)','FontSize',18)
set(gca,'fontsize',14)
grid on

figure
%subplot(2,2,2)
errorbar(anos,ver,dver,'.','MarkerSize',15)
axis([1978,2016,240,310])
title('Summer','FontSize',22)
xlabel('Year','FontSize',18)
ylabel('Total ozone column (DU)','FontSize',18)
set(gca,'fontsize',14)
grid on

figure
%subplot(2,2,3)
errorbar(anos,out,dout,'.','MarkerSize',15)
axis([1978,2016,240,310])
title('Autumn','FontSize',22)
xlabel('Year','FontSize',18)
ylabel('Total ozone column (DU)','FontSize',18)
set(gca,'fontsize',14)
grid on

figure
%subplot(2,2,4)
errorbar(anos,inv,dinv,'.','MarkerSize',15)
axis([1978,2016,240,310])
title('Winter','FontSize',22)
xlabel('Year','FontSize',18)
ylabel('Total ozone column (DU)','FontSize',18)
set(gca,'fontsize',14)
grid on

%ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');
%text(0.5, 1,'\bf Irene','HorizontalAlignment','center','VerticalAlignment', 'top');
