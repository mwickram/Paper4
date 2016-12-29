function order_parameter2

d0=load('ORm112410.dat'); %2E
d1=load('ORm122210.dat'); %3l 
d2=load('ORm120810.dat'); %3g  
d3=load('ORm121010.dat'); %4l
d4=load('ORm121310.dat'); %4sq
d5=load('ORm121010_1.dat'); %4str

trh=0.85;trhu=1.1;

eiv=[2 1 3 0.59 2 1];

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


sfac=eiv/cps(1);
cons1=cps/cps(1);
cons2=eiv(1)./eiv;
const=cons1./cons2


figure(1)

h=subplot(2,2,1);

set(h,'fontsize',14);

g=plot(1000./d0(2:end,1),d0(2:end,2),'-or',....
    1000./d1(2:end,1),d1(2:end,2),'-ob',....
    1000./d2(2:end,1),d2(2:end,2),'-dib',...
    1000./d3(2:end,1),d3(2:end,2),'-ok',...
    1000./d4(:,1),d4(:,2),'-dik',...
    1000./d5(:,1),d5(:,2),'-^k');
set(g(1),'markerfacecolor','r')
set(g(2),'markerfacecolor','b')
set(g(3),'markerfacecolor','b')
set(g(4),'markerfacecolor','k')
set(g(5),'markerfacecolor','k')
set(g(6),'markerfacecolor','k')

xlim([0 5]);
ylim([-0.02 1.05]);
ylabel('\bf\itr')
xlabel('\bf1/\itR\rm \bf(k\Omega)')
legend('2','3L','3G','4L','4Sq','4St','location','best')

h=subplot(2,2,2);

set(h,'fontsize',14);
g=plot(sfac(1)*1000./d0(2:end,1),d0(2:end,2),'-or',....
    sfac(2)*1000./d1(2:end,1),d1(2:end,2),'-ob',....
    sfac(3)*1000./d2(2:end,1),d2(2:end,2),'-dib',...
    sfac(4)*1000./d3(2:end,1),d3(2:end,2),'-ok',...
    sfac(5)*1000./d4(:,1),d4(:,2),'-dik',...
    sfac(6)*1000./d5(:,1),d5(:,2),'-^k');

lh=line([0 5],[0.85 0.85]);
set(lh,'linestyle','--','Color','k','linewidth',2)


xlim([0.5 5]);
ylim([-0.02 1.05]);
xlabel('\bf\mid\lambda_2\mid/\epsilon_2\itR\rm \bf(k\Omega)')
%legend('2e','3L','3G','4L','4Sq','4St','location','best')
set(g(1),'markerfacecolor','r')
set(g(2),'markerfacecolor','b')
set(g(3),'markerfacecolor','b')
set(g(4),'markerfacecolor','k')
set(g(5),'markerfacecolor','k')
set(g(6),'markerfacecolor','k')


figure(2)

subplot(2,3,1)
plot(1000./d0(2:end,1),d0(2:end,2),'-o')
xlim([1 1.1]);
ylim([-0.03 1.03]);
title('2 e')
ylabel('\itr')

subplot(2,3,2)
plot(1000./d1(2:end,1),d1(2:end,2),'-o')
xlim([1.45 3]);
ylim([0 1.03]);
title('3 L')

subplot(2,3,3)
plot(1000./d2(2:end,1),d2(2:end,2),'-o')
xlim([0.45 1.2]);
ylim([0.2 1.03]);
title('3 G')
ylim([0 1.03]);


subplot(2,3,4)
plot(1000./d3(2:end,1),d3(2:end,2),'-o')
xlim([2 5.1]);
ylim([0.12 1.03]);
title('4 L')
ylabel('\itr')
xlabel('1/\itR (\rmk\Omega)')
ylim([0 1.03]);



subplot(2,3,5)
plot(1000./d4(:,1),d4(:,2),'-o')
xlim([0.8 1.65]);
ylim([0.38 1.02]);
title('4 sq')
xlabel('1/\itR (\rmk\Omega)')
ylim([0.2 1.03]);


subplot(2,3,6)
plot(1000./d5(:,1),d5(:,2),'-o')
xlim([1.5 3]);
ylim([0.25 1.03]);
title('4 st')
xlabel('1/\itR (\rmk\Omega)')
ylim([0 1.03]);



end