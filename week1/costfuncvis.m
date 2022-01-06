%{
1. define datapoints
2. give range of theta_0 and theta_1
3. define h
4. define J
5. plot J w.r.t. theta_0 and theta_1
%}

X = [1, 2, 3];
m = 1;
c = 0;
Y = m .* X + c;
plot(X, Y);

theta_0 = [-10:0.1:10];
theta_1 = [-10:0.1:10];

J = [];

for i = 1:length(theta_0)
	for j = 1:length(theta_1)
		J(i, j) = sum((X .* theta_1(j) + theta_0(i) - Y).^2);
	end
end
J = J./(2 * length(X));
figure(1);
surf(theta_0, theta_1, J);
figure(2);
contour(theta_0, theta_1, J);