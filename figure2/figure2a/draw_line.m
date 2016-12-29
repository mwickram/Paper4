

function draw_line(x_index,y_index,xs,ys,fc,color)




for k=1:length(xs)

g=line([x_index xs(k)],[y_index ys(k)]);

set(g,'linewidth',fc,'color',color)

end





end