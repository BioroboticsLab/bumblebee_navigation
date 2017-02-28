function [ ] = plot_tracking_file_statistics( json_object )
close all

fprintf('%d trackedObjects found.\n', length(json_object.value0.x0x5F_trackedObjects))

Q = iterate_over_trackedObjects(json_object, @get_length_of_track)
hist(Q, 100)

figure
Q = iterate_over_trackedObjects(json_object, @get_ID);
hist(Q, 100)

% not finished dude!



function N = get_length_of_track(trackedObject)
N = length(trackedObject.x0x5F_objectsByFrame);

function N = get_ID(trackedObject)
N = trackedObject.x0x5F_id;