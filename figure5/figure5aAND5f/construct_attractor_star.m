function construct_attractor_star

data1=load('m042111_9.dat');

data1(:,1)=data1(:,1)/1.42; data1(:,2)=data1(:,2)/1.46; 
data1(:,3)=data1(:,3)/1.38; data1(:,4)=data1(:,4)/1.4;


data1=sgolayfilt(data1,2,101);
enum=4;
[ntau]=p_xcorr(data1,1000,4);
fc=25;

for k=1:length(ntau)

data=data1(1:end,k);
x=data(1:end-ntau(k)*2,:);
x2=data(ntau(k)+1:end-ntau(k),:);
x3=data(ntau(k)*2+1:end,:);


lg(k,1)=length(x);
ml=min(lg);
data2(1:ml,1:3,k)=[x(1:ml) x2(1:ml) x3(1:ml)];

end

d=75000;
data2=data2(d:end-d,:,:);
length(data2)
n=1;
x=data2(:,1,enum);
x2=data2(:,2,enum);
x3=data2(:,3,enum);

inst=round(length(data2)/4);
px=[data2(inst,1,1) data2(inst,1,2) data2(inst,1,3) data2(inst,1,4)];
px2=[data2(inst,2,1) data2(inst,2,2) data2(inst,2,3) data2(inst,2,4)];
px3=[data2(inst,3,1) data2(inst,3,2) data2(inst,3,3) data2(inst,3,4)];


v=axes;


plot3(x,x2,x3,'-k','linewidth',0.3);
az=[109 143 25 63];
el=[36 8 -14 -6];
xlabel(['\iti\rm(\itt\rm-',num2str(2*ntau(1)),'\itt\rm)'],'FontWeight','bold','Fontsize',fc)
ylabel('\iti\rm(\itt\rm)','FontWeight','bold','fontsize',fc)
zlabel(['\iti\rm(\itt\rm-',num2str(2*ntau(1)+1),'\itt)'],'FontWeight','bold','Fontsize',fc)
view(az(4),el(4))
box on;
axis square
axis tight
set(v,'fontsize',fc,'FontWeight','bold')
set(v,'linewidth',4,'linestyle','-')
set(v,'xtick',[0.1:0.1:0.4],'ytick',[0.1:0.1:0.4],'ztick',[0.1:0.1:0.4])
set(v,'zticklabel',{' ','0.2','0.3','0.4'})

hold all


p=plot3(px(1),px2(1),px3(1),'o',px(3),px2(3),px3(3),'^');%first and third oscillator
q=plot3(px(2),px2(2),px3(2),'o',px(4),px2(4),px3(4),'sq');%second and fourth oscillator
a=0.1; b=0.41;
xlim([a b]); ylim([a b]); zlim([a b])



set(p,'markeredgecolor','k','linewidth',2)
set(p(1),'markersize',25,'markerfacecolor','w')
set(p(2),'markersize',25,'markerfacecolor','w')

set(q,'markeredgecolor','k','linewidth',2)
set(q(1),'markersize',25,'markerfacecolor','w')
set(q(2),'markersize',25,'markerfacecolor','w')




print -r300 -dtiff attractor_m042111_9.tiff


