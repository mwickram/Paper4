function implot(data,dar)


data=mod(data+pi,2*pi)-pi;
data=flipud(data);
data=circshift(data,[0 -4]);

%fileout=strcat('theta','.dat');
%save('-ascii', fileout, 'data');

fc=12;

[nr,nc]=size(data);

t=[0:nr-1]/dar;
%t=-t;
N=[1:1:nc];


hg=subplot(2,2,3:4);

set(hg,'fontsize',fc,'FontName','arial')

g=imagesc(N,t,data,[-3 3]);
h=get(g,'parent');
set(h,'Xtick',[1:1:20])
set(h,'XTickLabel',{'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'})
%set(h,'yTickLabel',{'200','150','100','50','0'})

xlabel('Electrode number')
ylabel('Time (s)')

p=gray;
a=[p(33:64,:); flipud(p(33:64,:))];
colormap(a)
colorbar


end