function [ P ] = iterate_over_directory( directory, fhandle )

D = dir([directory '/*.mat'])

P = [];

for i = 1 : length(D)

    D(i).name
    
    matfile = load([directory '\' D(i).name]);
    
    P = [P; fhandle(matfile.obj.data)];
    
end

end

