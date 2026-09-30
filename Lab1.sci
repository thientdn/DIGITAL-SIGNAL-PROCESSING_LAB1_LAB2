clc;
clear;
close;

// 1.1 first question
x = [1:4];
xplus1 = x + 1

// 1.1 second question
y = [5:8];
xy = x .* y

// 1.1 third question
x = linspace(0, %pi, 10);
sin_x = sin(x)

// 1.2 first question (T = 2pi / 100pi = 0.02)
subplot(3,1,1);
t = linspace(0,0.1,400);
x_a = 3*sin(100*%pi*t);
plot(t, x_a, style = 1);
xtitle('Analog signal xa(t)', 't (s)', 'xa(t)');

// 1.2 third question: The discrete-time signal x(n) = 3*sin(%pi*n/3) (periodic signal: f = 1/6, T = 6)
subplot(3,1,2)
n = linspace(0,30,30);
xn = 3*sin(%pi*n/3);
plot2d3(n, xn, style = 2)
xtitle('Discrete-time signal x(n)', 'n (samples)', 'x(n)');

// 1.2 fourth question: The quantized signal
// truncated: xqn = floor(xn/delta) *delta
subplot(3,1,3)
delta = 0.1;
xqn = floor(xn/delta)*delta;
plot2d3(n, xqn, style = 4)
xtitle('Quantized signal xq(n)', 'n (samples)', 'xq(n)');
