
function custering 

data=load('ORm121010.dat');

data=data(5:end,:);
d=1000./data(1:end,1);

subplot(2,2,1)

plot(d,data(1:end,3),'-ok',d,data(1:end,6),'-^k',d,data(1:end,8),'-dik')
ylim([-0.02 1.04])
xlim([2 4.7])
title('Direct r_c')
legend('1,2','2,3','3,4','location','best') 

subplot(2,2,2)

plot(d,data(1:end,4),'-ok',d,data(1:end,5),'-^k',d,data(1:end,7),'-dik')
ylim([-0.02 1.04])
xlim([2 4.7])
title('Indirect r_c')
legend('1,3','1,4','2,4','location','best')



subplot(2,2,3)
plot(d,data(1:end,2),'-ok')
ylim([-0.02 1.04])
xlim([2 4.7])
title('Linear  r')

end