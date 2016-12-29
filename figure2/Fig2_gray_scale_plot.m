 function Fig2_gray_scale_plot 



path=strcat('phase','/','pm051712_6.dat');
data=load(path);
dar=200;


T=[372 592];

start_t=round(dar*T(1));
last_t=round(dar*T(2));

data=data(start_t:last_t,:);

d=data;%unwrap phase data

[row,col]=size(d);
CM=load('CM20_7.dat');

Radius=(length(find(CM(1,:)))-1)/2;
Rcom=(CM*exp(i*d'))'/(2*Radius+1);%Ne+ element
theta=unwrap(angle(Rcom')');

t=[0:row-1]/dar;
subplot(2,2,1)
plot(t,theta)
dphase=d-theta;


fileout=strcat('theta','.dat');
save('-ascii', fileout, 'dphase');



implot(dphase,dar)


f_out=strcat('fig2_gray_scale','.tiff');
%print('-f1','-r600','-dtiff',f_out);


 end