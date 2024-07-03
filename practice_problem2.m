/*

This MATLAB script simulates and plots the changes in the magnitude spectrum of a signal x(t) 
when the parameter T_0is varied as 10^k for k=0,1,2,3,4. 
The symbolic function fourier is used to compute the Fourier Transform X(ω).

*/

syms x t


figure(1)

for k = 0:4
    T0 = 10^k;
    x = (1/T0)*(heaviside(t)-heaviside(t-T0));
    X = fourier(x);
    ezplot(abs(X),[-12 12]);
    grid on;
    axis([-12 12 -0.25 1.25])
    hold on
    pause(1)
end


/*
As T_0 increases, the width of the rectangular pulse 
x(t) increases, and consequently, the main lobe of the Fourier Transform X(ω) narrows 
while the side lobes become more prominent.
This demonstrates the time-frequency duality in Fourier analysis: 
a wider time-domain signal corresponds to a narrower frequency-domain representation and vice versa.
*/