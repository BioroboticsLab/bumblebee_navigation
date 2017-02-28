function P = get_points_from_trackedobject( trackedObj )
P = [];
for i = 1 : length(trackedObj.x0x5F_objectsByFrame)
    cntr    = trackedObj.x0x5F_objectsByFrame{i}.value.ptr_wrapper.data.x0x5F_last_known_position_0x2E_center;
    P       = [P; cntr.point_0x2E_x cntr.point_0x2E_y];
end
P = remove_static_detections(P);
P = remove_still_phases(P);
end

