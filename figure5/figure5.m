
function figure5


filename='m042411_6';
fig_indx=1;
dar=1000;
fc=16;


data1=strcat('delta_current','/','1_dis_',filename,'.dat');
data2=strcat('delta_current','/','3_dis_',filename,'.dat');



data1=load(data1);%(1,2), (1,3), (1,4)
data2=load(data2);%(3,4)

delta_I=[data1 data2];

[r,c]=size(delta_I);
t=[0:r-1]/dar;

scrsz = get(0,'ScreenSize');

Hf_fig=figure(1);
set(Hf_fig,'Position',[1 scrsz(4)/1.5 scrsz(3)/2.5 scrsz(4)/1.5]);

for k=1:c
    
h=subplot(4,2,fig_indx);

set(h,'fontsize',fc,'FontName','arial')

plot(t,delta_I(:,k),'k')

ylim([-0.05 0.2 ])
xlim([0 250])
%ylabel('\iti\rm (mA)')
set(h,'ytick',[0 0.2])
set(h,'XTicklabel','')
fig_indx=fig_indx+2;

end


g=subplot(4,2,7);
set(g,'fontsize',fc,'FontName','arial')
set(g,'XTicklabel','0|50|100|150|200|250')
xlabel('\itt\rm (s)')


set(Hf_fig,'PaperPositionMode','auto')
print('-dtiff','-r300','fig5.tiff')





end
