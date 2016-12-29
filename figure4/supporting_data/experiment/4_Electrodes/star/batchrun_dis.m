function batchrun_dis(base)

% 4 electrodes star
number=[18 20:32];
 
for k=1:length(number)
   
     filename=strcat(base,'_',num2str(number(k)),'.dat')
     fname(k,1)= {filename};
     iddm1(filename,4); 
  
end

filename=char(fname)

end



