function batchrun_dis(base)

% 2 electrodes 

number=[1 2 3 4 26 29 31 32 33 35 37 40 42:44 15:23];
 
for k=1:length(number)
   
     filename=strcat(base,'_',num2str(number(k)),'.dat')
     fname(k,1)= {filename};
     iddm1(filename,2); 
  
end

filename=char(fname)

end



