function batchrun_dis(base)

% 3 electrodes linear

number=[2 3 5 6  7 8 9 10 11 12 13 14];
 
for k=1:length(number)
   
     filename=strcat(base,'_',num2str(number(k)),'.dat')
     fname(k,1)= {filename};
     iddm1(filename,3); 
  
end

filename=char(fname)

end



