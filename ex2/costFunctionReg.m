function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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

% calculate the J
for i=1:m
    z = X(i,:) * theta;
    J = J + ( y(i)*log(sigmoid(z)) + (1-y(i))*log(1-sigmoid(z)) );
end

n = size(theta);
reg = 0;
for j=2:n
    reg = reg + theta(j)*theta(j);
end
J = -1 * J / m + lambda/(2*m) * reg;
    
% calculate the gradient
for j=1:n
    for i=1:m
        z = X(i,:) * theta;
        grad(j) = grad(j) + (sigmoid(z) - y(i))*X(i,j);
    end
    grad(j) = grad(j) / m;
    if j ~= 1
        grad(j) = grad(j) + lambda * theta(j) / m;
    end
end


% =============================================================

end
