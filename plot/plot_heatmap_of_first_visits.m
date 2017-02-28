function P = plot_heatmap_of_first_visits(src_directory)

[ P ] = iterate_over_directory( src_directory, @get_cells_of_first_visit_for_all_trackedobject );

N = hist3(P, [3 3]);
imagesc(N')

