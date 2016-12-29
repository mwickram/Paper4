d=load('Bm121010.dat');

d=d(2:end-1,:);

subplot(2,2,1)
h=plot(d(:,1),d(:,6),'-Ok',d(:,1),d(:,7),'-Ok',d(:,1),d(:,8),'--Ok',d(:,1),d(:,9),'-^k',...
       d(:,1),d(:,10),'--^k',d(:,1),d(:,11),'-dik');
   
set(h(1),'markerfacecolor','k','linewidth',3)
set(h(2),'markerfacecolor','k','linewidth',1)
set(h(3),'markerfacecolor','k','linewidth',2)
set(h(4),'markerfacecolor','k','linewidth',2)
set(h(5),'markerfacecolor','k','linewidth',2)
set(h(6),'markerfacecolor','k','linewidth',2)

xlabel('\bf\itR\rm\bf (\Omega)')
ylabel('\bf\sigma (\Delta\iti\rm\bf_l_,_k)')
legend('E12','E13','E14','E23','E24','E34','location','best')
xlim([75 425])
ylim([-0.001 0.05])


subplot(2,2,2)

d(:,1)=1000*1./d(:,1);
h=plot(d(:,1),d(:,12),'-Ok',d(:,1),d(:,13),'-Ok',d(:,1),d(:,14),'--Ok',d(:,1),d(:,15),'-^k',...
       d(:,1),d(:,16),'--^k',d(:,1),d(:,17),'-dik');
   
set(h(1),'markerfacecolor','k','linewidth',3)
set(h(2),'markerfacecolor','k','linewidth',1)
set(h(3),'markerfacecolor','k','linewidth',2)
set(h(4),'markerfacecolor','k','linewidth',2)
set(h(5),'markerfacecolor','k','linewidth',2)
set(h(6),'markerfacecolor','k','linewidth',2)

xlabel('\bf\itR\rm\bf (\Omega)')
ylabel('\bf\sigma (\Delta\iti\rm\bf_l_,_k)')
legend('E12','E13','E14','E23','E24','E34','location','best')
xlim([2 7])
ylim([-0.02 1.2])