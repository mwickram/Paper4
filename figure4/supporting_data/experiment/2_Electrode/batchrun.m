function batchrun (base,la)


number=[1 2 3 4 26 29 31 32 33 35 37 40 42:44 15:23]; 
R=[inf 600 700 800 900 915 920 930 940 945 950 958 964 967 970 980 1120 1140 1180 1220 1300 1400 1600 1800];

     
for k=1:length(number)
   
     filename=strcat(base,'_',num2str(number(k)),'.dat')
     fname(k,1)= {filename};
     %c=findfre(filename,2,-0.005,0);
   
     dis=order_p(filename);
     data(k,1)= R(k);
     data(k,2)=dis;
  
end

fileout=strcat(la,base,'.dat');
save('-ascii', fileout, 'data')

filename=char(fname)
movefile('dis_*.tiff','distance_fig');

end



