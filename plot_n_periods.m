function plot_n_periods(n)
hold on
g = groot;
g.ShowHiddenHandles = 'off';
fig = gca;
m = length(fig.Children);
g.ShowHiddenHandles = 'on';
m2 = length(fig.Children);
n2 = m2/m;
if nargin ==0
    n = n2+1;
end
if n<n2
    fig.Children(1:end-n*m).delete;
else
    g.ShowHiddenHandles = 'off';
for j = n2:n-1
    for i =1:m
    
    L = range(fig.Children(i).YData);
    
    plot(fig.Children(i).XData,fig.Children(i).YData+j*L,'Color',fig.Children(i).Color,'HandleVisibility','off');
    end
end
end

end