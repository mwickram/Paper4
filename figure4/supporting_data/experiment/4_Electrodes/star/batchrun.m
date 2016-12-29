function batchrun (base,la)

% 4 electrode star
number=[18 20:32]; 
R=[200 250 300 350 370 390 410 430 450 470 490 510 550 600];

     
for k=1:length(number)
   
     filename=strcat(base,'_',num2str(number(k)),'.dat')
     fname(k,1)= {filename};
     [a]=order_p(filename);
     
     data(k,1)= R(k);
     data(k,2:8)=a;
     
end

fileout=strcat(la,base,'.dat');
save('-ascii', fileout, 'data')

filename=char(fname)
movefile('dis_*.tiff','distance_fig')
movefile('hist_*.tiff','hist_distance_fig')

end



