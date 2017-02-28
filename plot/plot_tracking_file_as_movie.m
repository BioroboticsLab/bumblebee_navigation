function [  ] = plot_tracking_file_as_movie( json_object )

OUT = convert_trackedObjects_to_frame_centric_list(json_object)

for t = 1 : length(OUT.DATA)
    if ~isempty(OUT.DATA{t})
        plot(OUT.DATA{t}(:,2), OUT.DATA{t}(:,3),'o')
        axis([0 2000 0 2000])
        drawnow
        pause(0.1)
    end
end

