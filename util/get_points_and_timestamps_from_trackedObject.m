function [ P ] = get_points_and_timestamps_from_trackedObject( trackedObj )
P = [];
for i = 1 : length(trackedObj.x0x5F_objectsByFrame)
    t       = trackedObj.x0x5F_objectsByFrame{i}.key;
    cntr    = trackedObj.x0x5F_objectsByFrame{i}.value.ptr_wrapper.data.x0x5F_last_known_position_0x2E_center;
    P       = [P; t cntr.point_0x2E_x cntr.point_0x2E_y];
end

end

