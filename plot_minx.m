function plot_minx()
fig = gca;
for i =1:length(fig.Children)

    [val,j] = min(fig.Children(i).XData);
    plot(val,fig.Children(i).YData(j),'o','Color',fig.Children(i).Color,'HandleVisibility','off')
end
end
    