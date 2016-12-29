
function circle(a,b,m)

t=[0:pi/10000:2*pi];
lg=length(t);
r=0.3;


x=a+r*cos(t);
y=b+r*sin(t);

g=plot(x,y,'-k');

fill(x,y,[0.5 0.5 0.5])
%text(a,b,num2str(m),'FontSize',16,'Fontweight','bold','HorizontalAlignment','center')