function draw_nlr

g=linspace(0,2*pi-pi/10,20);
a=1;
b=a;
r=2;


x=a+r*cos(g);
y=b+r*sin(g);

    
for m=1:length(x)
    
circle(x(m),y(m),m)
hold all


end



axis square
axis off

for k=1:length(x)

CM=load('CM20_7.dat');


xs=x.*CM(k,:);
zero_x=(find(xs==0));
xs(zero_x)=[];

ys=y.*CM(k,:);
zero_y=(find(ys==0));
ys(zero_y)=[];

x_index=x(k);
y_index=y(k);

fc(1)=2;
fc(2:length(x))=0.25;
fc(10)=2;


color=zeros(length(x),3);
color(1,:)=[1 0 0];


draw_line(x_index,y_index,xs,ys,fc(k),color(k,:))

end


print -r300 -dtiff fig_cir.tiff





























% for k=1:1
%     
% xdf=x-x(k);
% ydf=y-y(k);
% xdf=xdf.*CM(k,:);
% xdf=xdf.^2;
% ydf=ydf.*CM(k,:);
% ydf=ydf.^2;
% 
% c=real(sqrt(xdf+ydf));
% 
% R=c/8/h +(h/2);
% 
% end

% x
% y
% 
% 
% 
% for k=1:1
% 
% % x=x.*CM(k,:);
% % y=y.*CM(k,:);
% 
% x=x;
% y=y;
% 
% x_index=x(k);
% y_index=y(k);
% 
% [cs]=tangent_intersection(r,x_index,y_index,x,y);
% 
% 
% end
% 
% 
% dsr=real(sqrt((cs(1,1)-x(1))^2+ (cs(1,2)-y(1,2))^2))
% 
% t=[0:pi/100:2*pi];
% 
% xc=cs(1)+dsr*cos(t);
% yc=cs(2)+dsr*sin(t);
% 
% plot(xc,yc)



 
% 

% [cs]=tangent_intersection(r,x_index,y_index,x,y);
% 
% 
% end
% 
% 
% dsr=real(sqrt((cs(1,1)-x(1))^2+ (cs(1,2)-y(1,2))^2))
% 
% t=[0:pi/100:2*pi];
% 
% xc=cs(1)+dsr*cos(t);
% yc=cs(2)+dsr*sin(t);
% 
% plot(xc,yc)












% for k=1:20
%     
% x1=x(k);
% 
% 
% for n=
% 
% [r]=chord(h,x();
% 
% r
