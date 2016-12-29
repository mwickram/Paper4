
function circle_map(a,b,curr,m)

t=[0:pi/10000:2*pi];
lg=length(t);
r=0.3;

       
c=round(curr*63)+1;
c_map=jet;
colormap(c_map);

c=c_map(c,:);


x=a+r*cos(t);
y=b+r*sin(t);

g=plot(x,y,'-k');

fill(x,y,c)
text(a,b,num2str(m),'FontSize',16,'Fontweight','bold','HorizontalAlignment','center')