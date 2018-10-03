function idx = findClosestCentroids(X, centroids)
%	This function computes the centroid memberships for every example

% Set K
K = size(centroids, 1);
idx = zeros(size(X,1), 1);

% Go over every example, find its closest centroid, and store the index inside idx at the appropriate location.

m = size(X, 1);
minTillNow = 0;

for i=1:m,
	for j=1:K,
		val = norm(X(i, :) - centroids(j, :), 2) ^ 2;
		if j == 1,
			idx(i) = j;
			minTillNow = val;
		else,
			if val < minTillNow,
				idx(i) = j;
				minTillNow = val;
			end;
		end;
	end;
end;

end