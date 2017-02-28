function [ P ] = remove_static_detections( P )
D = diff(P);
Q = mean( sqrt( D(:,1).^2 + D(:,2).^2 ) );

if Q < 20
    P = [];
    fprintf('static detections removed\n')
end
end

