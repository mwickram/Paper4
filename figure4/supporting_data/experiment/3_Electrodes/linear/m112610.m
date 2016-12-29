
d=load('Am112610.dat');

d=d(2:end,:);

subplot(2,2,1)

h=plot(d(:,1),d(:,5),'-Ok',d(:,1),d(:,6),'-^k',d(:,1),d(:,7),'-dik');
set(h(1),'markerfacecolor','k','linewidth',2)
set(h(2),'markerfacecolor','k','linewidth',2)
set(h(3),'markerfacecolor','k','linewidth',2)
xlabel('\bf\itR\rm\bf (\Omega)')
ylabel('\bf\sigma (\Delta\iti\rm\bf_l_,_k)')
legend('E12','E23','E13','location','best')
ylim([-0.0015 0.06])
xlim([275 775])

subplot(2,2,2)

h=plot(d(:,1),d(:,8),'-Ok',d(:,1),d(:,9),'-dik',d(:,1),d(:,10),'-^k');
set(h(1),'markerfacecolor','k','linewidth',2)
set(h(2),'markerfacecolor','k','linewidth',2)
set(h(3),'markerfacecolor','k','linewidth',2)
xlabel('\bf\itR\rm\bf (\Omega)')
ylabel('\delta(k)')
legend('E12','E13','E23','location','best')
ylim([-0.0015 0.1])
xlim([275 775])
