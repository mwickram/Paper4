function exp_omega


%filename='m051712_6.dat';
%filename='m051712_3.dat';%natural freq
filename='m051712_4.dat';


data=strcat('phase/p',filename);
data=load(data);

dar=200;
%T=[372 592 (592-372)];
T=[100 320 (320-100)];
start_t=round(dar*T(1));
last_t=round(dar*T(2));


data=data(start_t:last_t,:);

[r,col]=size(data);
t=[0:length(data(:,1))-1]'/dar;

for k=1:col
   
d=data(:,k);

p=polyfit(t,d,1);
Fre(k,:)=p(1)/2/pi;

end

omega_out=strcat('omega','_',filename(1:end-3),'dat')
save ('-ascii',omega_out,'Fre')
movefile('omega*.dat','Frequency')


end


 
 
 
 
 


