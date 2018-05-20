function t=clip_sparse_vector(s)
% clip a sparse N-by-1 matrix to its convex support
[i,j,v]=find(s);
t=s(1:max(i),1);
