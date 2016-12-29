function fig_move(base)


% movefile('*pd*.tiff','phase_diff');
% movefile('*lm*.tiff','phase_difference');


%folder_fig=strcat(base,'_','fig');

%movefile('*.tiff',folder_fig)
movefile('dis_*.tiff','distance_fig')
movefile('hist_*.tiff','hist_distance_fig')

end