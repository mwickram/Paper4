function exp_omega1



filename='m031313_1.dat';

data=strcat('phase/p',filename);
data=load(data);
[row,col]=size(data);
dar=200;

t=[0:length(data(:,1))-1]'/dar;

for k=1:col
   
d=data(:,k);

p=polyfit(t,d,1);
Fre(k,:)=p(1)/2/pi;

end

Fre

Total_cyles=t(end)*mean(Fre)


end


 
 
 
 
 


