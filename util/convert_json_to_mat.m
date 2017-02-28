function [  ] = convert_json_to_mat( input_directory, output_directory )

% create ouput directory
if exist(output_directory) ~= 7
    mkdir(output_directory)
end
    
D = dir([input_directory '/*.tdat'])

if isempty(D)
    fprintf('\nno tracking files found, attempting to cycle through subdirs...')

    D = dir(input_directory)
    
	for i = 1 : length(D)
        if strcmp( D(i).name, '.' ) || strcmp(D(i).name, '..')
            continue
        else        
            convert_json_to_mat( [input_directory '/' D(i).name], [input_directory '/' D(i).name '/mat']);
        end
    end
    return
end


for i = 1 : length(D)

    D(i).name
    
    data = loadjson([input_directory '\' D(i).name]);
    
    % store data and camID in separate object (hmm...wouldnt it make more
    % sense to put camID in data?
    obj.data = data;
    obj.camId = str2num( D(i).name(end-5) );
    
    save([output_directory '\' D(i).name '.mat'], 'obj')    
end

