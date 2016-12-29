function figure1


%d=load('m042111_9.dat');
d=load('m062111_11.dat');
d=sgolayfilt(d,2,21);


%I(:,1)=d(:,1)/1.42; I(:,2)=d(:,2)/1.46; 
%I(:,3)=d(:,3)/1.38; I(:,4)=d(:,4)/1.4;

I=d/1.2;

dar=200;
fc=16;


t=[0:length(d)-1]/dar;


h=subplot(2,2,1:2);  

set(h,'fontsize',fc,'FontName','arial')

g=plot(t,I(:,2:4),'-k',t,I(:,1),'--',t,I(:,5),'--b',t,I(:,6),'--r');

xlim([335 375])
%xlim([921 961])
ylim([0.05 0.2])

set(g(1:3),'Linewidth',3)
set(g(4),'color',[1 0.8 0])
set(g(4:6),'Linewidth',2)

xlabel('\itt\rm (s)')
ylabel('\iti\rm (mA)')


print -r300 -dtiff fig1.tiff