function [ P ] = get_grid_cell_of_first_visit( trackedObj )

% get trajectory
P = [];
for i = 1 : length(trackedObj.x0x5F_objectsByFrame)
    cntr    = trackedObj.x0x5F_objectsByFrame{i}.value.ptr_wrapper.data.x0x5F_last_known_position_0x2E_center;
    i = get_grid_cell_in_which_point_lies(cntr.point_0x2E_x, 2000, 3);
    j = get_grid_cell_in_which_point_lies(cntr.point_0x2E_y, 2000, 3);
    if (i == 1 || i == 3) && (j == 1 || j == 3) 
       P = [i j];
       return
    end
end



