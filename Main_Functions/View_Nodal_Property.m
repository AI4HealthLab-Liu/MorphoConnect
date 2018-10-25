function View_Nodal_Property(V,StructLabels,FigTitle)
%CREATEFIGURE(YMATRIX1)
%  YMATRIX1:  bar matrix data

%  Auto-generated by MATLAB on 23-Jan-2010 21:18:07

% Create figure
figure1 = figure;

NStruct = length(StructLabels);
FigYTicks = 1:1:NStruct;

CustomFontSize = 8;
if NStruct>54
    CustomFontSize = 6;
end;

% Create axes
axes1 = axes('Parent',figure1,'YGrid','on','Color',[0.9725 0.9725 0.9725],'YTick',FigYTicks,...
             'YTickLabel',StructLabels,'Ylim',[0.5,NStruct+0.5],'FontWeight','light','FontSize',CustomFontSize);

box('on');
hold('all');

% Create multiple lines using matrix input to bar
bar(V,'Horizontal','on','BarLayout','stacked','Parent',axes1);

% Create title
title(FigTitle,'FontSize',14,'FontName','Arial');

XLimPlot = get(axes1,'XLim');
Xmin = XLimPlot(1); 
Xmax = XLimPlot(2);

line([Xmin Xmax],[ceil(NStruct/2)+0.5 ceil(NStruct/2)+0.5],'LineWidth',2,'Color',[1 0 0]);

return;
