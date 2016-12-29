
function custering 

data=load('ORm121010_1.dat');

data=data(4:end,:);
d=1000./data(1:end,1);

subplot(2,2,1)

plot(d,data(1:end,5),'-ok',d,data(1:end,7),'-^k',d,data(1:end,8),'-dik')
ylim([-0.02 1.04])
%xlim([1.5 3])
title('Direct r_c')
legend('1,4','2,4','3,4','location','best') 

subplot(2,2,2)

plot(d,data(1:end,3),'-ok',d,data(1:end,4),'-^k',d,data(1:end,6),'-dik')
ylim([-0.02 1.04])
%xlim([1.5 3])
title('Indirect r_c')
legend('1,2','1,3','2,3','location','best')



subplot(2,2,3)
plot(d,data(1:end,2),'-ok')
ylim([-0.02 1.04])
%xlim([1.5 3])
title('STAR  r')

end