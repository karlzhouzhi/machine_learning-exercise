function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

pos_one = find(y==1);
pos_zero = find(y==0);

plot(X(pos_one, 1), X(pos_one, 2), 'k+', 'LineWidth', 1, 'MarkerSize', 7);
plot(X(pos_zero, 1), X(pos_zero, 2), 'o', 'LineWidth', 1, 'MarkerSize', 7, ...
    'MarkerFaceColor', 'y');






% =========================================================================



hold off;

end
