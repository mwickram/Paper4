function exp_omega_natural


filename='m051712_3.dat';%natural freq

data=strcat('phase/p',filename);
data=load(data);
dar=200;

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


 
 
 
 
 


