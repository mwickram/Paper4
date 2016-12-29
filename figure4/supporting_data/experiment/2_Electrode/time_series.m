function time_series

d=load('m112410_1.dat');
d=sgolayfilt(d,2,21);


dar=200;
fc=16;
t=[0:length(d)-1]/dar;

rind=[1.390 1.400];

h=subplot(2,2,1);
set(h,'fontsize',fc,'FontName','Arial')
g=plot(t,d(:,1)/rind(1),'-r',t,d(:,2)/rind(2),'-k');
xlabel('\itt \rm(s)')
ylabel('\it i\rm (mA)')
set(g(1),'Linewidth',2)
set(g(2),'Linewidth',2)
xlim([85 100])
ylim([0.1 0.4])


d=load('m112410_29.dat');
d=sgolayfilt(d,2,21);
t=[0:length(d)-1]/dar;

h=subplot(2,2,2);
set(h,'fontsize',fc,'FontName','Arial')
g=plot(t,d(:,2)/rind(2),'-r',t,d(:,2)/rind(1),'-k');
xlabel('\itt \rm(s)')
ylabel('\it i\rm (mA)')
set(g(1),'Linewidth',2)
set(g(2),'Linewidth',2)
xlim([85 100])
ylim([0.1 0.4])

d0=load('ORm112410.dat'); %order parameter

h=subplot(2,2,3);
set(h,'fontsize',fc,'FontName','Arial')
g=plot(1000./d0(2:end,1),d0(2:end,2),'-ok');
xlabel('1/\itR \rm(k\Omega)')
ylabel('\itr')
set(g(1),'Linewidth',2,'markerfacecolor','k')

xlim([0 2])
ylim([-0.02 1.03])
print -r300 -dtiff fig1.tiff

end
