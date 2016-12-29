function current_map_nlr(d,time)

g=linspace(0,2*pi-pi/10,20);
a=1;
b=a;
r=2;
dar=200;

x=a+r*cos(g);
y=b+r*sin(g);

    
d=load('m051712_6.lvm');
d=d(:,9:28);
tstar=round(dar*372);
tend=round(dar*592);
d=d(tstar:tend,:);
d=sgolayfilt(d,2,21);

[nr,nc]=size(d);
zmax=max(max(d));
zmin=min(min(d));

zm=round(100*zmin)/100;
zm=strcat(num2str(zm));
zmx=round(10*zmax)/10;
zmx=strcat(num2str(zmx));

zmid=round(100*(zmax/2-zmin/2))/100;
zmid=strcat(num2str(zmid));

tselect=round(time*dar)

%for k=1:1
    
curr=(d(tselect,:)-zmin)/(zmax-zmin);
curr=circshift(curr,[0 -4]);

for m=1:length(x)

    
circle_map(x(m),y(m),curr(m),m);

hold all
axis off

end


H=colorbar;
set(H,'YTick',[0 0.5 1]);
set(H,'YTickLabel',{zm,zmid,zmx})
set(H,'FontSize',16,'Fontweight','bold')

axis square




%print -r300 -dtiff fig_nlr_chimera1.tiff





























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
