function batchrun_dis(base)

% 4 electrodes square
number=[21 20 9 22 8 10:19]; 
 
for k=1:length(number)
   
     filename=strcat(base,'_',num2str(number(k)),'.dat')
     fname(k,1)= {filename};
     iddm1(filename,4); 
  
end

filename=char(fname)

end



