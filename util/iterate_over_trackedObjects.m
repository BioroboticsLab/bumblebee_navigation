function [ OUT ] = iterate_over_trackedObjects( json_object, fhandle )

N   = length(json_object.value0.x0x5F_trackedObjects);
OUT = [];

% for all objects
for i = 1 : N
    % get intermediate struct which contains the trajectory
    q = json_object.value0.x0x5F_trackedObjects(i);
    
    %append output data
    OUT = [OUT; fhandle(q{1} )];
end
