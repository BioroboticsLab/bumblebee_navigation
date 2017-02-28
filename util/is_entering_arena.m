function b = is_entering_arena( trackedObj )

% ToDo pass argument
arena_width     = 2000;
arena_height    = 2000;
bins            = 3;

cntr    = trackedObj.x0x5F_objectsByFrame{1}.value.ptr_wrapper.data.x0x5F_last_known_position_0x2E_center;

    i = get_grid_cell_in_which_point_lies(cntr.point_0x2E_x, 2000, 3);
    j = get_grid_cell_in_which_point_lies(cntr.point_0x2E_y, 2000, 3);
    
    b = ( (i == 2) && (j == 3)) || ...
        ( (i == 2) && (j == 2));

    
%     
% b = cntr.point_0x2E_x > arena_width / 3       && ...
%     cntr.point_0x2E_x < 2*arena_width / 3     && ...
%     cntr.point_0x2E_y > arena_height / 3      && ...
%     cntr.point_0x2E_y < 2*arena_height / 3;

end

