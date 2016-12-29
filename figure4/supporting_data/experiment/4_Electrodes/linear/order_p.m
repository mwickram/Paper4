
function [a]=order_p(filename)


data=strcat('distance','\','dis_',filename);
data=load(data);
data=data(1:end-100,:);

dar=200;
t=[0:length(data)-1]/dar;

figure(1)

for k=1:6
subplot(6,1,k)
plot(t,data(:,k),'-k')
ylabel('\itd \rm(mA)')
ylim([-0.01 0.4]);
xlim([0 250]);
end

subplot(6,1,1)
title([filename(1:7),'\_',filename(9:end),' ','1,2'])

subplot(6,1,2)
title('1,3')

subplot(6,1,3)
title('1,4')

subplot(6,1,4)
title('2,3')

subplot(6,1,5)
title('2,4')

subplot(6,1,6)
title('3,4')
xlabel('t (s)')

fout1=strcat('dis_',filename(1:end-4),'.tiff');
print('-dtiff','-r300', fout1);


figure(2)

for k=1:6
subplot(2,3,k)
hist(data(:,k),5000)
xlim([0 0.4])
ylim([0 130])
end

subplot(2,3,1)
title([filename(1:7),'\_',filename(9:end),' ','1,2'])

subplot(2,3,2)
title('1,3')

subplot(2,3,3)
title('1,4')

subplot(2,3,4)
title('2,3')
xlabel('\itd \rm(mA)')

subplot(2,3,5)
title('2,4')
xlabel('\itd \rm(mA)')

subplot(2,3,6)
title('3,4')
xlabel('\itd \rm(mA)')

fout2=strcat('hist_',filename(1:end-4),'.tiff');
print('-dtiff','-r300', fout2);


dis=data<0.02;
dis=mean(dis);
dist=mean(dis)

a=[dist dis];
end
    
    