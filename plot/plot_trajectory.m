function [] = plot_trajectory(trackedObj, color)
P = get_points_from_trackedobject( trackedObj );
if ~isempty(P) && size(P,1) > 2
    plot(P(1,1), P(1,2), 'g*')
    hold on
    plot(P(:,1), P(:,2), color)
    plot(P(end,1), P(end,2), 'r+')
    hold off
end 