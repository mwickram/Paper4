
function custering 

data=load('ORm122210.dat');

data=data(4:end,:)
d=1000./data(:,1);

subplot(2,2,1)

plot(d,data(:,3),'-ok',d,data(:,4),'-^k',d,data(:,5),'-dik')
title('3 electrodes')
ylim([-0.03 1.04])
xlim([1.5 3])
xlabel('K (1/k\Omega)')
ylabel('\itr') 
legend('1,2','1,3','2,3','location','best')

subplot(2,2,2)

plot(d,data(:,2),'-ok')
ylim([-0.03 1.04])
xlim([1.5 3])
xlabel('K (1/k\Omega)')
ylabel('\itr') 

end