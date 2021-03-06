function Plot_Random_Failure_analysis(Nc,thresbins,DataNameStrings)

% Input Parameters:
%  thresbins:  vector of x data
%  Nc:  matrix of y data
%  DataNameStrings : Cell array with the name of the Data for legend.
%
%
% Lester Melie-Garcia
% Neuroinformatics Department
% Cuban Neuroscience Center
% December 2nd, 2012.

% Create figure

figure1 = figure('Color',[1 1 1]);

% Create axes
axes1 = axes('Parent',figure1,'FontWeight','bold','FontSize',12,'FontName','Arial');

ylim([0 1.05]);
box('on');
hold('all');

% Create multiple lines using matrix input to plot
plot(thresbins,Nc,'LineWidth',2.5);

% Create xlabel
xlabel({'Proportion of deleted nodes'},'FontWeight','bold','FontSize',14,...
    'FontName','Arial');

% Create ylabel
ylabel({'Relative size of the largest component'},'FontWeight','bold',...
    'FontSize',14,...
    'FontName','Arial');

% Create title
title({'Random Failure Analysis'},'FontWeight','bold','FontSize',14,...
    'FontName','Arial');

% Create legend

if exist('DataNameStrings','var')
    legend1 = legend(axes1,'show',DataNameStrings);
else
    legend1 = legend(axes1,'show');
end;
set(legend1,'Position',[0.2076 0.538 0.1091 0.07656]);

return;

