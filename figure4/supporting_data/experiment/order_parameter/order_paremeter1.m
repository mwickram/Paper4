

d0=load('ORm112410.dat'); %2E
d1=load('ORm122210.dat'); %3l 
d2=load('ORm120810.dat'); %3g  
d3=load('ORm121010.dat'); %4l
d4=load('ORm121310.dat'); %4sq
d5=load('ORm121010_1.dat'); %4str


figure(2)
g=plot(1000./d0(2:end,1),d0(2:end,2),'-^k',1000./d1(2:end,1),d1(2:end,2),'-ok',1000./d2(2:end,1),d2(2:end,2),'-dik',...
    1000./d3(2:end,1),d3(2:end,2),'-ok',1000./d4(:,1),d4(:,2),'-dik',1000./d5(:,1),d5(:,2),'-^k');

set(g(1),'Linewidth',2)
set(g(2),'Linewidth',2)
set(g(3),'Linewidth',2)

xlim([0 5]);
ylim([-0.02 1.02]);
legend('2e','3L','3G','4L','4Sq','4St','location','best')


figure(1)
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