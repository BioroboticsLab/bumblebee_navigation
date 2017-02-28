% 1D cell
function [ i ] = get_grid_cell_in_which_point_lies( x, width, nbins)
bin_width = width / nbins;
% 1-based index
i = floor(x / bin_width) + 1;
end

