
function dis=distance_vu1(data2,nstr,nend)

nlength=length(data2(:,:,1));

for k1=1:3
    
    
for k=1:nlength
    
data3=data2(k,k1,nstr)- data2(k,k1,nend);
data4(k1,k)=data3.^2 ; % [x
                       % y  
                       % z] format 
end
   
end


dis=sqrt(sum(data4));
dis=dis';
end
