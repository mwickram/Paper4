function batchrun (base,la)

number=[2 3 5 6  7 8 9 10 11 12 13 14];
R=[inf 200 300 350 400 425 450 475 500 550 600 650];

     
for k=1:length(number)
   
     filename=strcat(base,'_',num2str(number(k)),'.dat')
     fname(k,1)= {filename};
     a=order_p(filename);
     
     data(k,1)= R(k);
     data(k,2:5)=a;
  
end

fileout=strcat(la,base,'.dat');
save('-ascii', fileout, 'data')

filename=char(fname)
movefile('dis_*.tiff','distance_fig')
movefile('hist_*.tiff','hist_distance_fig')
end



