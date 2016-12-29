function fig_move(base)


% movefile('*pd*.tiff','phase_diff');
% movefile('*lm*.tiff','phase_difference');


folder_fig=strcat(base,'_','fig');

movefile('*.tiff',folder_fig)

end