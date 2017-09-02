function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

%for i=1:m
%   z = X(i,:) * theta;
%   J = J + (y(i)* log(sigmoid(z)) + (1-y(i))* log(1-sigmoid(z))); 
%end
%J = -1/m * J;

% vectorized implementation for J:
h = sigmoid(X*theta);
J = -1/m * (y'*log(h) + (1-y)'*log(1-h));


for j=1:length(grad)
    for i=1:m
        z = X(i,:) * theta;
        grad(j) = grad(j) + (sigmoid(z) - y(i))* X(i,j);
    end
    grad(j) = grad(j) / m;
end



% =============================================================

end
