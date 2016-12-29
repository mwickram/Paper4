
function [a]=order_p(filename)


data=strcat('distance','\','dis_',filename);
data=load(data);
data=data(1:end-100,:);

dar=200;
t=[0:length(data)-1]/dar;

figure(1)

for k=1:3
subplot(3,1,k)
plot(t,data(:,k),'-k')
ylabel('\itd \rm(mA)')
ylim([-0.01 0.45])
end

subplot(3,1,1)
title([filename(1:7),'\_',filename(9:end),' ','1,2'])

subplot(3,1,2)
title('1,3')

subplot(3,1,3)
title('2,3')
xlabel('t (s)')

fout1=strcat('dis_',filename(1:end-4),'.tiff');
print('-dtiff','-r300', fout1);


figure(2)

for k=1:3
subplot(2,3,k)
hist(data(:,k),5000)
xlabel('\itd \rm(mA)')
xlim([0 0.45])
ylim([0 130])
end

subplot(2,3,1)
title([filename(1:7),'\_',filename(9:end),' ','1,2'])

subplot(2,3,2)
title('1,3')

subplot(2,3,3)
title('2,3')



fout2=strcat('hist_',filename(1:end-4),'.tiff');
print('-dtiff','-r300', fout2);


dis=data<0.02;
dis=mean(dis);
dist=mean(dis)

a=[dist dis];
end
    
    