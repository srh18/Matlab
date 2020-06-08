function plot_maxx()
fig = gca;
for i =1:length(fig.Children)
    
    [val,j] = max(fig.Children(i).XData);
    plot(val,fig.Children(i).YData(j),'x','Color',fig.Children(i).Color,'HandleVisibility','off')
end
end
    