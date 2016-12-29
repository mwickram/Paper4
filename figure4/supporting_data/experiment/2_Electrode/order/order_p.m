
function dis=order_p(filename)


data=strcat('distance','\','dis_',filename);
data=load(data);
data=data(1:end-100,:);

dar=200;
t=[0:length(data)-1]/dar;

figure(1)

subplot(2,1,1)
plot(t,data(:,k),'-k')
ylabel('\itd \rm(mA)')
ylim([-0.01 0.15])


subplot(2,1,1)
title([filename(1:7),'\_',filename(9:end),' ','1,2'])

subplot(2,1,2)
hist(data(:,k),5000)
xlim([0 0.12])
ylim([0 130])


fout1=strcat('dis_',filename(1:end-4),'.tiff');
print('-dtiff','-r300', fout1);


dis=data<0.02;
dis=mean(dis)

end
    
    