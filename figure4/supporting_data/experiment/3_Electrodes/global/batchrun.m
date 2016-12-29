function batchrun (base,la)

%3 electrode global
number=[1:7 16:22 10:15]; 
R=[inf 700 800 900 950 1000 1100 1220 1240 1260 1280 1300 1330 1370 1400 1500 1600 1700 1800 1900];
     
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



