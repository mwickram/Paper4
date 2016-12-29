function batchrun (base,la)


number=[21 20 9 22 8 10:19]; 
R=[100 200 400 500 600 625 650 700 750 800 850 900 950 1000 1100];

     
for k=1:length(number)
   
     filename=strcat(base,'_',num2str(number(k)),'.dat')
     fname(k,1)= {filename};
     a=order_p(filename);
     
     data(k,1)= R(k);
     data(k,2:8)=a;
  
end

fileout=strcat(la,base,'.dat');
save('-ascii', fileout, 'data')

filename=char(fname)
movefile('dis_*.tiff','distance_fig')
movefile('hist_*.tiff','hist_distance_fig')
end



