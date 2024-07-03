//This MATLAB script demonstrates signal expansion and compression through a comparison with an original signal. 




clear all; clc;
//This line clears all variables from the workspace and clears the command window.



t=0:0.002:8; t1=0:0.001:8; t2=0:0.004:8;
x=cos(pi*t); x1=cos(pi*t1/2); x2=cos(pi*2*t2);
//t is the time vector for the original signal with a time step of 0.002 seconds.
//t1 is the time vector for the expanded signal with a time step of 0.001 seconds.
//t2 is the time vector for the compressed signal with a time step of 0.004 seconds.
//x is the original signal, a cosine wave.
//x1 is the expanded signal, with the argument of the cosine function adjusted to t1/2.
//x2 is the compressed signal, with the argument of the cosine function adjusted to 2*t2.


figure(1)
subplot(211)
plot(t1,x1)
hold on
plot(t,x,'r')
xlabel('t (sec)')
ylabel('x(t/2), x(t)')
legend('expanded signal', 'original signal')

//figure(1) creates a new figure window.
//subplot(211) divides the figure into a 2x1 grid and selects the first subplot.
//plot(t1,x1) plots the expanded signal.
//hold on allows multiple plots on the same axes.
//plot(t,x,'r') plots the original signal in red.
//xlabel, ylabel, and legend add labels and a legend to the plot.


subplot(212)
plot(t2,x2)
hold on
plot(t,x,'r')
xlabel('t (sec)')
ylabel('x(2t), x(t)')
hold off
legend('compressed signal','original signal')

//subplot(212) selects the second subplot in the 2x1 grid.
//The steps are similar to the first subplot but for the compressed signal (x2).





//The resulting figure shows two subplots:

//The first subplot compares the expanded signal with the original signal.
//The second subplot compares the compressed signal with the original signal.
//This visualization helps in understanding how time-scaling (expansion and compression) affects the signal.