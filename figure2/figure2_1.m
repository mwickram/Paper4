
function figure2_1

data2=load('phase/pm051712_6.dat');
data1=load('phase/pm051712_4.dat');
filename='m051712_5.dat';
data=strcat('phase/p',filename);
data=load(data);
dar=200;
fc=16;

T=[1 599 589];
%T=[100 320 (320-100)];
start_t=round(dar*T(1));
last_t=round(dar*T(2));

data=data(start_t:last_t,:);

data=[data1;data;data2];
data=data(30000:end,:);

[row,col]=size(data);

%figure('Numbertitle','off','Name',filename);

% determining global order parameter Z(t)
rt=abs(sum(exp(i*data)'))/col;
t=[0:length(data(:,1))-1]/dar;
g_order=mean(rt(1:end))



h=subplot(221);

%set(h,'fontsize',fc,'FontName','arial')

g=plot(t,rt,'-k');
set(g,'linewidth',1)
xlim([0 t(end)])



T=[1 353 352];

start_t=round(dar*T(1));
last_t=round(dar*T(2));

data=data(start_t:last_t,:);


save -ascii m031313_1.dat data % the file contains data just after compling to synchronization to 
                                    %very first sync at z=1;

% tend=round(t(end));
% xlim([0 tend])
% ylim([0 1])
% ylabel('\itZ(t)')
% xlabel('\itt\rm (s)')
% 
% 
% %plot frequency of oscillators
% 
% 
% file=strcat('Frequency','/','omega','_',filename);
% omega=load(file);
% 
% omega=round(1000*omega)/1000;
% cycles=mean(omega)*length(data)/dar
% 
% N=[1:length(omega)];
% 
% %natural frequency
% filename='m051712_3.dat';
% file=strcat('Frequency','/','omega','_',filename);
% omega_n=load(file);
% 
% 
% 
% omega=circshift(omega,-4);
% omega_n=circshift(omega_n,-4);
% 
% h2=subplot(222);
% 
% set(h2,'fontsize',fc,'FontName','arial')
% g=plot(N,omega,'o-k',N,omega_n,'o-k');
% 
% set(g(1),'linewidth',2,'markerfacecolor','k','markeredgecolor','k','markersize',7)
% set(g(2),'linewidth',2,'markerfacecolor','w','markeredgecolor','k','markersize',7)
% set(h2,'Xtick',[1:1:20])
% %set(h2,'XtickLabel',{' ','9',' ','7',' ','5',' ','3',' ','1',' ',' 3',' ','5',' ','7',' ','9',' ','11'})
% set(h2,'XtickLabel',{'','','','4','','','','8','','','','12','','','','16','','','','20'})
% 
% 
% 
% ylabel('\omega (Hz)')
% xlabel('\itk')
% ylim([min(omega)-0.004 0.4])
% %ylim([0.365 0.4])
% xlim([0 21])



%Fig2_gray_scale_plot 



%print -r300 -dtiff fig2.tiff


end




