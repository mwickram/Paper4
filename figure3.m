function figure3

fname='m062711_3.dat'; 

dar=200;
fc=16;
rind=1.2;%kohm

d=load(fname);   
d=sgolayfilt(d,2,21);
t=[0:length(d(:,1))-1]'/dar;
      
I=d/rind;
    

%scrsz = get(0,'ScreenSize');
Hf_fig=figure(1);
set(Hf_fig,'unit','inches')

%set(Hf_fig,'Position',[1 scrsz(4)/1.5 scrsz(3)/2.5 scrsz(4)/1.5]);

%set(Hf_fig,'Position',[1 1 1040 896])
%set(Hf_fig,'position',[0.9843   -0.3189   15.7354   13.2538])

sub_h=0.95;

h=subplot(5,2,1);  

set(h,'fontsize',fc,'FontName','arial')
set(h,'unit','inches')
h_pos=get(h,'position');
set(h,'position',[h_pos(1) h_pos(2) 3.42 sub_h])


g=plot(t,I(:,2:4),'-k',t,I(:,1),'-r',t,I(:,5:6),'-r');
xlim([17 37])
ylim([0.12 0.41])

set(g(1:3),'Linewidth',1)
set(g(4:6),'Linewidth',1)
set(h,'XTicklabel','')
set(h,'ytick',[0.2 0.4])
%xlabel('\itt\rm (s)')
%ylabel('\iti\rm (mA)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fname='m062411_16.dat';
d=load(fname);   
d=sgolayfilt(d,2,21);
t=[0:length(d(:,1))-1]'/dar;
      
I=d/rind;
    
h=subplot(5,2,3);  

set(h,'fontsize',fc,'FontName','arial')
set(h,'unit','inches')
h_pos=get(h,'position');
set(h,'position',[h_pos(1) h_pos(2) 3.42 sub_h])

g=plot(t,I(:,2:5),'-k',t,I(:,1),'-r',t,I(:,6),'-r');

ylim([0.12 0.41])
xlim([17 37])
set(g(1:4),'Linewidth',1)
set(g(5:6),'Linewidth',1)
set(h,'XTicklabel','')
set(h,'ytick',[0.2 0.4])
%xlabel('\itt\rm (s)')
%ylabel('Current (mA)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fname='m100612_45.lvm'; 

dar=200;
rind=1.2;%kohm

d=load(fname);
d=d(:,9:28);
d=sgolayfilt(d,2,21);
t=[0:length(d(:,1))-1]'/dar;
      
I=d/rind;
    
h=subplot(5,2,5);

set(h,'fontsize',fc,'FontName','arial')
set(h,'unit','inches')
h_pos=get(h,'position');
set(h,'position',[h_pos(1) h_pos(2) 3.42 sub_h])

g=plot(t,I(:,1:6),'-k',t,I(:,17:20),'-k',t,I(:,7:16),'-r');
xlim([17 37])
ylim([0.12 0.41])

set(g(1:10),'Linewidth',1)
set(g(11:20),'Linewidth',1)
set(h,'XTicklabel','')
set(h,'ytick',[0.2 0.4])
%xlabel('Time (s)')
%ylabel('\iti\rm (mA)')

%%%%%%%%%%%%%%%%%%%%%%%%%%

fname='m101912_8.lvm'; 
%fname='m022012_13.lvm';

dar=200;
rind=1;%kohm

d=load(fname);
d=d(:,9:28)/1;
d=sgolayfilt(d,2,21);
t=[0:length(d(:,1))-1]'/dar;
      
I=d/rind;
    
h=subplot(5,2,7);  
set(h,'fontsize',fc,'FontName','arial')
set(h,'unit','inches')
h_pos=get(h,'position');
set(h,'position',[h_pos(1) h_pos(2) 3.42 sub_h])

%g=plot(t,I(:,1:5),'-k',t,I(:,16:20),'-k',t,I(:,6:15),'-r');
g=plot(t,I(:,1:9),'-k',t,I(:,20),'-k',t,I(:,10:19),'-r');
xlim([17 37])
ylim([0.05 0.35])

set(g(1:10),'Linewidth',0.5)
set(g(11:20),'Linewidth',0.5)
set(h,'XTicklabel','')
set(h,'ytick',[0.1 0.3])
%xlabel('\itt\rm (s)')
%ylabel('Current (mA)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fname='m101912_7.lvm';
%fname='m022012_15.lvm';
d=load(fname);   
d=d(:,9:28)/1;
d=sgolayfilt(d,2,21);
t=[0:length(d(:,1))-1]'/dar;
      
I=d/rind;
    
h=subplot(5,2,9);  
set(h,'unit','inches')
h_pos=get(h,'position');
set(h,'position',[h_pos(1) h_pos(2) 3.42 sub_h])
set(h,'fontsize',fc,'FontName','arial')

%g=plot(t,I(:,1:3:4),'-k',t,I(:,3:3:6),'-k',t,I(:,8:11),'-k',t,I(:,13:4:17),'-k',...
    %t,I(:,2:3:5),'-r',t,I(:,7:5:12),'-r',t,I(:,14:16),'-r',t,I(:,18:20),'-r');

g=plot(t,I(:,1:2:5),'-k',t,I(:,9:12),'-k',t,I(:,14),'-k',t,I(:,16:17),'-k',...
t,I(:,2:2:8),'-r',t,I(:,7),'-r',t,I(:,13:2:15),'-r',t,I(:,18:20),'-r');

ylim([0.05 0.35])
xlim([17 37])
set(g(1:10),'Linewidth',0.5)
set(g(11:20),'Linewidth',0.5)
set(h,'ytick',[0.1 0.3])
xlabel('Time (s)')
%ylabel('Current (mA)')


%set(Hf_fig,'PaperPositionMode','auto')
print('-dtiff','-r300','fig3.tiff')

