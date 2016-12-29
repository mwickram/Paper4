

d=load('Hm112410.dat');

subplot(2,2,1)

h=plot(d(2:end-4,1),d(2:end-4,4),'-Ok');
set(h(1),'markerfacecolor','k','linewidth',2)

xlabel('\bf\itR\rm\bf (\Omega)')
ylabel('\bf\sigma (\Delta\iti\rm\bf_l_,_k)')
xlim([550 1300])
%ylim([0 0.04])


subplot(2,2,2)
d(:,1)=1000*1./d(:,1);
h=plot(d(2:end-4,1),d(2:end-4,5),'-Ok');
set(h(1),'markerfacecolor','k','linewidth',2)

xlabel('\bf1/\itR\rm\bf (k\Omega)')
ylabel('\bf\itr')

xlim([0.75 1.8])
ylim([-0.01 1.1])