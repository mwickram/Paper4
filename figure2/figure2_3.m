function figure2_3


filename='m031313_1.dat';
data=strcat('phase/p',filename)
data=load(data);
dar=200;
fc=16;

t=[0:length(data(:,1))-1]'/dar;
t(end)
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
