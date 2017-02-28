function [ I ] = find_borders_of_binary_sequence( Y )
   
    I = [];

    %%%%find start and end of 1's
    % find non-zero indices
    q = find(Y);
    
    if isempty(q)
        return
    end
    
    % find indices in q, that have a greater difference than 1
    % we obtain the lengths of the periods
    w = find(diff(q)-1);
    
    % collect borders
    start = 1;
    for i = 1:length(w)
       stop     = w(i);
       I        = [I; q(start) q(stop)];
       start    = stop + 1;
    end
    I = [I; q(start) q(end)];  
end

