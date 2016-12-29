function batchrun_dis(base)

% 3 electrodes global
number=[1:7 16:22 10:15]; 
 
for k=1:length(number)
   
     filename=strcat(base,'_',num2str(number(k)),'.dat')
     fname(k,1)= {filename};
     iddm1(filename,3); 
  
end

filename=char(fname)

end



