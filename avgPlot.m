
N = 10000;
[A, coords] = makePlanarGraph(N);
gplot(A, coords);
avgT = 0;
avgQ = 0;

for i = 1:1
    [cut, soln] = graphPartitioning(A, 1, 0);
    t = load('time.txt');
    q = load('besteval.txt');
    avgT = avgT + t;
    avgQ = avgQ + q;
end
% avgT = avgT/3;
% avgQ = avgQ/3;

avgT = load('time.txt');
avgQ = load('besteval.txt');

plot(avgT, avgQ);