function order_parameter3

d0=load('ORm112410.dat');%2E
d1=load('ORm122210.dat'); %3l 
d2=load('ORm120810.dat'); %3g  
d3=load('ORm121010.dat'); %4l
d4=load('ORm121310.dat'); %4sq
d5=load('ORm121010_1.dat'); %4str

trh=0.85;trhu=1.1;

eiv=[2 1 3 0.59 2 1];
eiv=eiv;

cps0=1000./d0(find(d0(:,2)>trh & d0(:,2)<trhu),1);
cps1=1000./d1(find(d1(:,2)>trh & d1(:,2)<trhu),1);
cps2=1000./d2(find(d2(:,2)>trh & d2(:,2)<trhu),1);
cps3=1000./d3(find(d3(:,2)>trh & d3(:,2)<trhu),1);
cps4=1000./d4(find(d4(:,2)>trh & d4(:,2)<trhu),1);
cps5=1000./d5(find(d5(:,2)>trh & d5(:,2)<trhu),1);


lg=min([length(cps0) length(cps1) length(cps2) length(cps3) length(cps4) length(cps5)]);    

cps0=flipud(cps0);
cps(:,1)=cps0(1:lg);

cps1=flipud(cps1);
cps(:,2)=cps1(1:lg);

cps2=flipud(cps2);
cps(:,3)=cps2(1:lg);

cps3=flipud(cps3); 
cps(:,4)=cps3(1:lg);

cps4=flipud(cps4); 
cps(:,5)=cps4(1:lg);

cps5=flipud(cps5);
cps(:,6)=cps5(1:lg);


cps=min(cps)
sfac=2*cps(1);
cons1=cps/cps(1);
cons2=eiv(1)./eiv;
const=cons1./cons2


kcop0=(eiv(1)*1000)./d0(2:end,1);
kc0=kcop0/sfac;
kcop1=(eiv(2)*1000)./d1(2:end,1);
kc1=kcop1/sfac;
kcop2=(eiv(3)*1000)./d2(2:end,1);
kc2=kcop2/sfac;
kcop3=(eiv(4)*1000)./d3(2:end,1);
kc3=kcop3/sfac;
kcop4=(eiv(5)*1000)./d4(:,1);
kc4=kcop4/sfac;
kcop5=(eiv(6)*1000)./d5(:,1);
kc5=kcop5/sfac;


h=subplot(2,2,1);

set(h,'fontsize',14);

g=plot(1000./d0(2:end,1),d0(2:end,2),'-or',....
   1000./d1(2:end,1),d1(2:end,2),'-ob',....
   1000./d2(2:end,1),d2(2:end,2),'-o',...
   1000./d3(2:end,1),d3(2:end,2),'-ok',...
   1000./d4(:,1),d4(:,2),'-o',...
   1000./d5(:,1),d5(:,2),'-om');

set(g(1),'markerfacecolor','r')
set(g(2),'markerfacecolor','b')
set(g(3),'markerfacecolor',[0 0.7 0],'Color',[0 0.7 0])
set(g(4),'markerfacecolor','k')
set(g(5),'markerfacecolor',[1 0.9 0],'Color',[1 0.9 0],'linewidth',2)
set(g(6),'markerfacecolor','m','Color',[1 0 1])

xlim([0 5.09]);
ylim([-0.02 1.05]);
ylabel('\bf\itr')
xlabel('\bf\epsilon_n\rm \bf(1/k\Omega)')
legend('2','3L','3G','4L','4Sq','4St','location','best')




h=subplot(2,2,2);

set(h,'fontsize',14);

g=plot(kc0(:,1),d0(2:end,2),'-or',....
    kc1(:,1),d1(2:end,2),'-ob',....
    kc2(:,1),d2(2:end,2),'-o',...
    kc3(:,1),d3(2:end,2),'-ok',...
    kc4(:,1),d4(:,2),'-o',...
    kc5(:,1),d5(:,2),'-om');


lh=line([0 5],[0.85 0.85]);
set(lh,'linestyle','--','Color','k','linewidth',2)


xlim([0 5.09]);
ylim([-0.02 1.05]);
xlabel('\bf\epsilon_n/\kappa')
%legend('2e','3L','3G','4L','4Sq','4St','location','best')
set(g(1),'markerfacecolor','r')
set(g(2),'markerfacecolor','b')
set(g(3),'markerfacecolor',[0 0.7 0],'Color',[0 0.7 0])
set(g(4),'markerfacecolor','k')
set(g(5),'markerfacecolor',[1 0.9 0],'Color',[1 0.9 0],'linewidth',2)
set(g(6),'markerfacecolor','m','Color',[1 0 1])



end