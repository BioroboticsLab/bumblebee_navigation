% to be used with function "iterate_over_directory"
function [ dummy ] = plot_single_tracking_file( json_object )
dummy = [];
colors = 'k';%rgmb';
M = length(colors);
N = length(json_object.value0.x0x5F_trackedObjects);

hold on
% for all objects
for i = 1 : N
    % get intermediate struct which contains the trajectory
    q = json_object.value0.x0x5F_trackedObjects(i);
    plot_trajectory(q{1}, colors( mod(i, M)+1 ) );
end

