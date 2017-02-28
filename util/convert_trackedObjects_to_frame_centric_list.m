function [ OUT ] = convert_trackedObjects_to_frame_centric_list( json_object )

Q = iterate_over_trackedObjects(json_object, @get_min_max_frame_pos);
frame_min = min(Q(:));
frame_max = max(Q(:));
N = frame_max-frame_min+1;


Q = get_points_and_timestamps_for_all_trackedObjects(json_object);
M = length(Q);

OUT.frame_start = frame_min;
OUT.DATA = cell(1, N);

for dt = 0 : N-1
    t = frame_min + dt;
    for j = 1 : M
        line_idx = find( Q{j}(:,1) == t );
        if ~isempty(line_idx)
            OUT.DATA{dt+1} = [OUT.DATA{dt+1} ;Q{j}(line_idx, :)];            
        end
    end
end

end

function [OUT] = get_min_max_frame_pos(trackedObject)
mn = inf;
mx = -inf;

N = length(trackedObject.x0x5F_objectsByFrame);

for i = 1 : N
    frame_pos = trackedObject.x0x5F_objectsByFrame{i}.key;
    mn = min(mn, frame_pos);
    mx = max(mx, frame_pos);
end
OUT = [mn mx];
end