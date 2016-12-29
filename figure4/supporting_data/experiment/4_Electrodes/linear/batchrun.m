function batchrun (base,la)


number=[2:15]; 
R=[inf 100 150 200 220 240 260 280 300 320 340 360 400 450];

     
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



