function [c]=findfre(dat,enum,re,im)


dn=('C:\Documents and Settings\mwickram\My Documents\LabVIEW Data\');
sdir=dat(1:7);
Data=strcat(dn,sdir,'\',dat);
data1=load(Data);
data1=sgolayfilt(data1,2,21);

disp(dat)    
dar=200;
sigma_id=std(data1(:,1)-data1(:,2));

for k=1:enum
 
data=data1(1:end,k);

d=data-mean(data);

h = hilbert(d); % for phase coherent chaos
h=h + re + im*(i);%used for rossler model and haim model
%h=h-3e-3-1e-3*i;% mainly used for non-phase coherent data
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

g=subplot(2,2,k+2);
set(g,'fontsize',fc,'FontName','Arial');
plot(t,p,'k','linewidth',2);
ylabel('\phi (rad)','FontName','Arial');
xlabel('\itt \rm(s)','FontName','Arial');
title([num2str(freq(k)),' ','Hz']);
xlim([0 250]);

    
num_oscillations(k)=round(freq(k)*length(p)/dar);
data_point_for_one_oscillation(k)=round(dar/freq(k));
thou_os=num_oscillations(k)-1000;
data_point(k)=round((thou_os/freq(k))*dar);

end

%fout=strcat(dat,'_','.tiff');
%print('-dtiff','-r300', fout);
close;

disp('     ')
disp('Average data point per oscillation')
disp(num2str(mean(data_point_for_one_oscillation)))

num_oscillations;
Avg_num_oscillations=mean(num_oscillations)

disp('Frequency oscillator 1 and 2,  Std ')
c=[freq sigma_id]

end




