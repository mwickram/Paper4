function [dist]=iddm1(dat,enum)

dn=('C:\Documents and Settings\mwickram\My Documents\LabVIEW Data\');
sdir=dat(1:7);
Data=strcat(dn,sdir,'\',dat);
data1=load(Data);
data1=sgolayfilt(data1,2,21);
disp(dat)    
ntau=p_xcorr(dat,1000,enum);


for k=1:enum

data=data1(1:end,k);
x=data(1:end-ntau(k)*2,:);
length(x);
x2=data(ntau(k)+1:end-ntau(k),:);
length(x2);
x3=data(ntau(k)*2+1:end,:);
length(x3);

lg(k,1)=length(x);
ml=min(lg);
data2(1:ml,1:3,k)=[x(1:ml) x2(1:ml) x3(1:ml)];


subplot(2,2,k)

h=plot3(x,x2,x3);

xlabel('X')
ylabel('Y')
zlabel('Z')
xlim([0.15 0.45])
ylim([0.15 0.5])
zlim([0.2 0.45])
view(-56,23)
grid

end


n=1;

for nstr=1:enum-1 %enum-1  maximum interations with any one oscillator
    
    for nend=nstr+1:enum
     
    dis=distance_vu1(data2,nstr,nend);
    dist(:,n)=dis;
    n=n+1;    
    end


end

dist; 

fileout=strcat('dis_',dat);
save('-ascii', fileout, 'dist')
movefile('dis_*.dat','distance')

end
