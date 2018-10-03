function centroids = computeCentroids(X, idx, K)
%	This function returns the new centroids by computing the means of the 
%	data points assigned to each centroid

[m n] = size(X);
centroids = zeros(K, n);

% Go over every centroid and compute mean of all points that belong to it

for k=1:K,
	indices = find (idx == k);
	for i=1:length(indices),
		centroids(k,:) += X(indices(i), :);
	end;
	centroids(k,:) /= length(indices);
end;


end