function P = plot_heatmap(src_directory)

[ P ] = iterate_over_directory( src_directory, @get_points_from_all_trackedObjects );

N = hist3(P, [3 3]);
imagesc(N)