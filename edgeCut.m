function e=edgeCut(A,x)
% A is an adjacency matrix of a graph
% x is a matrix of parition arrays.  Each row of x is a partition vector,
% such that the row contains partition numbers 0,or 1
% corresponding to a split into two clusters
% this function will calculate the edgeCut of EACH partition in EACH row
% of x

N = size(A,1);

% convert x, so that it contains -1 for vertices in one cluster and +1 for
% vertices in the other cluster

% simple conversion 0 -> -1 ; 1->1
x = 2*x - 1;


% Compute the Laplacian matrix
D = sparse(1:N,1:N,sum(A,2));
L = D - A;

% Now, the edge cut can be computed from the quadratic form:
e = x*L*x';

% The above is 4 times the edge cut, so divide by 4

e = e/4;

% return only the diagonal of e
e = diag(e);





