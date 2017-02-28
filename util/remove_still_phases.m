function [ P ] = remove_still_phases( P )

if isempty(P)
    return
end
D = diff(P);
Q = sqrt( D(:,1).^2 + D(:,2).^2 );

% find low activity, i.e. still bees
[ I ] = find_borders_of_binary_sequence( Q < 20 );

for i = 1 : size(I, 1)
    % length of sequence
    L = I(i,2) - I(i,1) + 1;
    
    if L > 30 % data is at 3 Hz 
        P( I(i,1)+L : I(i,2) ) = nan;
        fprintf('still phases removed\n')
    end
end
end

