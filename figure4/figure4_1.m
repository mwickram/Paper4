function figure4_1


d=load('two_oscillators/m112410_1.dat');
d=sgolayfilt(d,2,21);


I(:,1)=d(:,1)/1.39; I(:,2)=d(:,2)/1.40; 


dar=200;
fc=16;


%Hf_fig=figure(1);


t=[0:length(d)-1]/dar;


h=subplot(2,2,1);  


set(h,'units','inches');
h_pos=get(h,'position');
set(h,'position',[h_pos(1) h_pos(2) 2.67 1.25]); 

g=plot(t,I(:,1),'-k',t,I(:,2),'--k');
set(h,'fontsize',fc,'FontName','arial');

xlim([55 75])
ylim([0.09 0.42])


set(g(1),'Linewidth',1)
set(g(2),'Linewidth',1)
set(h,'xticklabel',{' '})

%xlabel('\itt\rm (s)')
%ylabel('\iti\rm (mA)')


d=load('two_oscillators/m112410_26.dat');
d=sgolayfilt(d,2,21);


I(:,1)=d(:,1)/1.39; I(:,2)=d(:,2)/1.40; 



h=subplot(2,2,3);  

set(h,'units','inches');
h_pos=get(h,'position');
set(h,'position',[h_pos(1) h_pos(2)+1.4 2.67 1.25]) ;

set(h,'fontsize',fc,'FontName','times new roman')


g=plot(t,I(:,1),'-k',t,I(:,2),'--k');

set(g(1),'Linewidth',1)
set(g(2),'Linewidth',1)

xlabel('Time (s)')
%ylabel('\iti\rm (mA)')
xlim([55 75])
ylim([0.09 0.42])


%set(Hf_fig,'PaperPositionMode','auto')
print('-dtiff','-r300','fig4_1.tiff')
