
function custering 

data=load('ORm120810.dat');

data1=data(2:end,:);
d1=1000./data1(1:end,1);

subplot(2,2,1)

g=plot(d1,data1(1:end,3),'-ok',d1,data1(1:end,4),'-^k',d1,data1(1:end,5),'-dik');
set(g(1),'markerfacecolor','k');
set(g(2),'markerfacecolor','r');
set(g(3),'markerfacecolor','g');
title('3 electrodes')
ylim([-0.03 1.04])
xlim([0.5 1.5])
xlabel('K (1/k\Omega)')
ylabel('\itr') 
legend('1,2','1,3','2,3','location','best')

subplot(2,2,2)

data2=data(9:end-3,:)
d2=1000./data2(1:end,1);
plot(d2,data2(1:end,2),'-ok')
ylim([-0.03 1.04])
xlim([0.6 0.83])
xlabel('K (1/k\Omega)')
ylabel('\itr') 


data3=data(7:end,:);
d3=1000./data3(1:end,1);

subplot(2,2,3)

g=plot(d3,data3(1:end,3),'-ok',d3,data3(1:end,4),'-^k',d3,data3(1:end,5),'-dik');
set(g(1),'markerfacecolor','k');
set(g(2),'markerfacecolor','r');
set(g(3),'markerfacecolor','g');
title('3 electrodes')
ylim([-0.03 1.04])
xlim([0.5 0.95])
xlabel('K (1/k\Omega)')
ylabel('\itr') 
legend('1,2','1,3','2,3','location','best')


end