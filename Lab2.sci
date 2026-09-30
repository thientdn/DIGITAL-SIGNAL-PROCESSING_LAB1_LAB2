clc;
clear;
xdel(winsid());// Close all currently open graphic windows

//task2.2
scf(1);
n = -5:5; 
msignal = bool2s (n >= 0); 
plot2d3(n, msignal)

//task 2.3
scf(2);
n = -5:5;
msignal = bool2s(n == 0);
plot2d3(n, msignal)

//task 2.4
scf(3);
n =-5:5;
// Generate the unit ramp signal ur(n)
ur = zeros(1, length(n));

for i = 1:length(n)
    if n(i) >= 0 then
        ur(i) = n(i); // ur(n) = n for n >= 0
    end
end

plot2d3(n, ur, style=2);
xlabel("t");
ylabel("Amplitude");
title("Unit Ramp Signal");
gca().children.children.thickness = 3;
xgrid();


//task 2.5
scf(4);
n = -1:1;
x = [1, 3, -2];

// Calculate x(-n) by reversing the array x
x_inv = x($:-1:1);

// Calculate even and odd components
xe = 0.5 * (x + x_inv);
xo = 0.5 * (x - x_inv);

// Plot Original Signal
subplot(3,1,1);
plot2d3(n, x, style=2);
title("Original Signal x(n)");
xlabel("n");
ylabel("Amplitude");

// Plot Even Component
subplot(3,1,2);
plot2d3(n, xe, style=5);
title("Even Component x_e(n)");
xlabel("n");
ylabel("Amplitude");

// Plot Odd Component
subplot(3,1,3);
plot2d3(n, xo, style=3);
title("Odd Component x_o(n)");
xlabel("n");
ylabel("Amplitude");



//task 2.6
scf(5);
n = -1:3;
x1 = [0, 0, 1, 3, -2];
x2 = [0, 1, 2, 3, 0];
y = x1 + x2;

subplot(3,1,1);
plot2d3(n, x1, style=2);
title("Signal x1(n)");
xlabel("n");
ylabel("x1(n)");
xgrid();

subplot(3,1,2);
plot2d3(n, x2, style=5);
title("Signal x2(n)");
xlabel("n");
ylabel("x2(n)");
xgrid();

subplot(3,1,3);
plot2d3(n, y, style=3);
title("Sum Signal y(n) = x1(n) + x2(n)");
xlabel("n");
ylabel("x1(n) + x2(n)");
xgrid();


//task 2.7
scf(6);
n = -1:3;
x1 = [0, 0, 1, 3, -2];
x2 = [0, 1, 2, 3, 0];
// Use element-wise multiplication
y = x1 .* x2;

subplot(3,1,1);
plot2d3(n, x1, style=2);
title("Signal x1(n)");
xlabel("n");
ylabel("x1(n)");
xgrid();

subplot(3,1,2);
plot2d3(n, x2, style=5);
title("Signal x2(n)");
xlabel("n");
ylabel("x2(n)");
xgrid();

subplot(3,1,3);
plot2d3(n, y, style=3);
title("Product Signal y(n) = x1(n) * x2(n)");
xlabel("n");
ylabel("x1(n) * x2(n)");
xgrid();


//task 2.8
n = -2:1;
x = [1, -2, 3, 6];

// 1) y1(n) = x(-n)
n1 = -1:2;
y1 = x($:-1:1);

// 2) y2(n) = x(n+3)
n2 = n - 3;
y2 = x;

// 3) y3(n) = 2x(-n-2)
n3 = -3:0;
y3 = 2 * x($:-1:1);

// Window 0: y1(n) = x(-n)
scf(7); 
subplot(2,1,1);
plot2d3(n, x, style=2); 
title("Original Signal x(n)"); xlabel("n"); ylabel("x(n)"); xgrid();
subplot(2,1,2);
plot2d3(n1, y1, style=3); 
title("y1(n) = x(-n)"); xlabel("n"); ylabel("y1(n)"); xgrid();

// Window 1: y2(n) = x(n+3)
scf(8);
subplot(2,1,1);
plot2d3(n, x, style=2); 
title("Original Signal x(n)"); xlabel("n"); ylabel("x(n)"); xgrid();
subplot(2,1,2);
plot2d3(n2, y2, style=5); 
title("y2(n) = x(n+3)"); xlabel("n"); ylabel("y2(n)"); xgrid();

// Window 2: y3(n) = 2x(-n-2)
scf(9);
subplot(2,1,1);
plot2d3(n, x, style=2); 
title("Original Signal x(n)"); xlabel("n"); ylabel("x(n)"); xgrid();
subplot(2,1,2);
plot2d3(n3, y3, style=6); 
title("y3(n) = 2x(-n-2)"); xlabel("n"); ylabel("y3(n)"); xgrid();
