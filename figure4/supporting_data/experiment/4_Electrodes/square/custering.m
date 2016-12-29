
function custering 

data=load('ORm121310.dat');

data=data(7:end,:);
d=1000./data(1:end,1);

subplot(2,2,1)

g=plot(d,data(1:end,3),'-ok',d,data(1:end,5),'-^k',d,data(1:end,6),'-dik',d,data(1:end,8),'-o   k');
%set(g(1),'markerfacecolor','k')
set(g(2),'markerfacecolor','r')
set(g(3),'markerfacecolor','g')
set(g(4),'markerfacecolor','b')
ylim([-0.02 1.04])
xlim([0.85 1.6])
title('Direct r_c')
legend('1,2','1,4','2,3','3,4','location','best') 

subplot(2,2,2)

plot(d,data(1:end,4),'-ok',d,data(1:end,7),'-^k')
ylim([-0.02 1.04])
xlim([0.85 1.6])
title('Indirect r_c')
legend('1,3','3,4','location','best')



subplot(2,2,3)
plot(d,data(1:end,2),'-ok')
ylim([-0.02 1.04])
xlim([0.85 1.6])
title('SQUARE  r')

end