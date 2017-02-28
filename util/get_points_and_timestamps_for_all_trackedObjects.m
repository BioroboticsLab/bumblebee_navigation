function [ P ] = get_points_and_timestamps_for_all_trackedObjects( json_object )

N = length(json_object.value0.x0x5F_trackedObjects);
P = cell(1,N);
% for all objects
for i = 1 : N
    % get intermediate struct which contains the trajectory
    q = json_object.value0.x0x5F_trackedObjects(i);
    P{i} = get_points_and_timestamps_from_trackedObject( q{1} );
end
