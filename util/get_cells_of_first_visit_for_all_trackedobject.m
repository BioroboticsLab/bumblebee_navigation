function [ P ] = get_cells_of_first_visit_for_all_trackedobject( json_object )

N = length(json_object.value0.x0x5F_trackedObjects);
P = [];
% for all objects
for i = 1 : N
    % get intermediate struct which contains the trajectory
    q = json_object.value0.x0x5F_trackedObjects(i);
    if is_entering_arena( q{1} )
        P = [P; get_grid_cell_of_first_visit(q{1})];
    end
end
