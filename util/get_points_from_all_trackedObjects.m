function [ P ] = get_points_from_all_trackedObjects( json_object )
N = length(json_object.value0.x0x5F_trackedObjects);
P = [];
% for all objects
for i = 1 : N
    % get intermediate struct which contains the trajectory
    q = json_object.value0.x0x5F_trackedObjects(i);
    P = [P; get_points_from_trackedobject( q{1} )];
end
