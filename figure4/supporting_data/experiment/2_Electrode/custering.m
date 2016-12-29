
function custering 

data=load('ORm112410.dat');

data=data(6:end-8,:)
d=1000./data(1:end,1);

subplot(2,2,1)

plot(d,data(1:end,2),'-ok')
title('2 electrodes')
ylim([-0.03 1.04])
xlim([1.0 1.1])
xlabel('K (1/k\Omega)')
ylabel('\itr') 

end