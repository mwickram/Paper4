function curr_diff(dat,enum,y)

dn=('C:\Documents and Settings\mwickram\My Documents\LabVIEW Data\');
sdir=dat(1:7);
Data=strcat(dn,sdir,'\',dat);
data1=load(Data);
data1=sgolayfilt(data1,2,21);
disp(dat)    


n=1;

for nstr=1:enum-1 %enum-1  maximum interations with any one oscillator
    
    for nend=nstr+1:enum
     
       data2=data1(:,nstr)-data1(:,nend);
       data3(:,n)=data2;
       n=n+1;
       
    end


end


dar=200;
t=[0:length(data3)-1]./dar;
intr=enum*(enum-1)/2;%number of interaction=number of column of data3


for k=1:intr

subplot(6,1,k)

plot(t,data3(:,k))
ylabel('\Delta i')
title([num2str(sdir)])
ylim([-y y])
xlim([0 250])
end

subplot(6,1,1)
title([dat(1:7) '\' dat(8:end) ' ' '1,2'])

subplot(6,1,2)
title(['1,3'])

subplot(6,1,3)
title(['1,4'])

subplot(6,1,4)
title(['2,3'])

subplot(6,1,5)
title(['2,4'])

subplot(6,1,6)
title(['3,4'])

mean(data3)

end
