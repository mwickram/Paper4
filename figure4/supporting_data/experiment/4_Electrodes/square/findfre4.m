function [c]=findfre4(dat,re,im)

dn=('C:\Documents and Settings\mwickram\My Documents\LabVIEW Data\');
sdir=dat(1:7);
Data=strcat(dn,sdir,'\',dat);
data1=load(Data);
data1=sgolayfilt(data1,2,21);
disp(dat)    

dar=200;
sigma_id12=std(data1(:,1)-data1(:,2));
sigma_id13=std(data1(:,1)-data1(:,3));
sigma_id14=std(data1(:,1)-data1(:,4));
sigma_id23=std(data1(:,2)-data1(:,3));
sigma_id24=std(data1(:,2)-data1(:,4));
sigma_id34=std(data1(:,3)-data1(:,4));

t=[0:length(data1)-1]./dar;


for k=1:4
 
data=data1(1:end,k);
d=data-mean(data);

h = hilbert(d); % for phase coherent chaos
h=h + re + im*(i);%used for rossler model and haim model
h=sgolayfilt(h,2,21);

fc=14;

figure(1)

g=subplot(2,2,k); 

set(g,'fontsize',fc,'FontName','Arial');
plot(h(100:end-100),'-k','linewidth',0.0001);
grid;
title([dat(1:7),'\',dat(8:end), ' ','Electrode' num2str(k)])
ylabel('\itH\rm     (mA)','FontName','Arial')
xlabel('\iti\rm - <\iti\rm > (mA)','FontName','Arial')
xlim([-0.2 0.3]);ylim([-0.3 0.2]);




p(:,1)=unwrap(angle(h(100:end-100)));
t=(1:length(p(:,1)))/dar;
t=t';
c_fit=polyfit(t,p,1);
freq(k)=c_fit(1)/(2*pi);


    
num_oscillations(k)=round(freq(k)*length(p)/dar);
data_point_for_one_oscillation(k)=round(dar/freq(k));
thou_os=num_oscillations(k)-1000;
data_point(k)=round((thou_os/freq(k))*dar);

end


t=[0:length(data1)-1]./dar;

g=subplot(2,2,4);
set(g,'fontsize',fc,'FontName','Arial');
gp=plot(t,data1(:,1),'-k',t,data1(:,2),'-r',t,data1(:,3),'-g');
ylabel('e','FontName','Arial');
xlabel('\itt \rm(s)','FontName','Arial');
title([num2str(freq),' ','Hz']);
xlim([210 230])

fout=strcat(dat,'_','.tiff');
print('-dtiff','-r300', fout);
close;

disp('     ')
disp('Average data point per oscillation')
disp(num2str(mean(data_point_for_one_oscillation)))

num_oscillations;
Avg_num_oscillations=mean(num_oscillations)

disp('Frequency oscillator 1 and 2,  Std ')
c=[freq sigma_id12 sigma_id13 sigma_id14 sigma_id23 sigma_id24 sigma_id34 ]

end




