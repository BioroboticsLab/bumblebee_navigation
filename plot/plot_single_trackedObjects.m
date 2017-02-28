function [ ] = plot_single_trackedObjects( json_object )

N   = length(json_object.value0.x0x5F_trackedObjects);

% for all objects
for i = 1 : N
i
    % get intermediate struct which contains the trajectory
    q = json_object.value0.x0x5F_trackedObjects(i);
    plot_trajectory(q{1}, 'k')
    axis([0 2000 0 2000])
    get_grid_cell_of_first_visit(q{1})
    pause
end

end

