% %  Compressing an Image by applying K-means clustering algorithm

%% Clear screen
cleanup();

% Default values (no:of clusters and no:of iterations)
K = 4; 
max_iters = 20;

while true
	
	% Ask the user for compression rate
	K = getCompressionRate();
	fprintf('\nUsing K: %d and max_iters: %d\n\n', K, max_iters);

	% Input image
	imageFileName = inputFromUser("Enter file name with a fully qualified path: ")

	%  Load the image
	A = double(imread(imageFileName));

	% If imread does not work for you, you can try instead
	% A = double(load ('bird_small.mat'));

	%  K-Means Clustering on Pixels: Use K-Means to compress an image. To do this,
	%  we will first run K-Means on the colors of the pixels in the image and
	%  then we will map each pixel onto its closest centroid.

	fprintf('\nRunning K-Means clustering on pixels from image: %s.\n\n', imageFileName);

	A = A / 255; % Divide by 255 so that all values are in the range 0 - 1

	% Size of the image
	img_size = size(A);

	% Reshape the image into an Nx3 matrix where N = number of pixels.
	% Each row will contain the Red, Green and Blue pixel values
	% This gives us our dataset matrix X that we will use K-Means on.
	X = reshape(A, img_size(1) * img_size(2), 3);

	% When using K-Means, it is important the initialize the centroids randomly. 
	initial_centroids = kMeansInitCentroids(X, K);

	% Run K-Means
	[centroids, idx] = runkMeans(X, initial_centroids, max_iters);

	%  Image Compression:  Use the clusters of K-Means to compress an image.
	%  To do this, we first find the closest clusters for each example.

	fprintf('\nApplying K-Means to compress an image.\n\n');

	% Find closest cluster members
	idx = findClosestCentroids(X, centroids);

	% Essentially, now we have represented the image X as in terms of the
	% indices in idx. We can now recover the image from the indices (idx) by mapping each pixel
	% (specified by its index in idx) to the centroid value
	X_recovered = centroids(idx,:);

	% Reshape the recovered image into proper dimensions
	X_recovered = reshape(X_recovered, img_size(1), img_size(2), 3);

	% Display the original image 
	subplot(1, 2, 1);
	imagesc(A); 
	title('Original');

	% Display compressed image side by side
	subplot(1, 2, 2);
	imagesc(X_recovered)
	title(sprintf('Compressed, with %d colors.', K));

end