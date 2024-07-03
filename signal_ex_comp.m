//This MATLAB script demonstrates signal expansion and compression through a comparison with an original signal. Here’s a step-by-step explanation:



clear all; clc;


t=0:0.002:8; t1=0:0.001:8; t2=0:0.004:8;
x=cos(pi*t); x1=cos(pi*t1/2); x2=cos(pi*2*t2);



figure(1)
subplot(211)
plot(t1,x1)
hold on
plot(t,x,'r')
xlabel('t (sec)')
ylabel('x(t/2), x(t)')
legend('expanded signal', 'original signal')


subplot(212)
plot(t2,x2)
hold on
plot(t,x,'r')
xlabel('t (sec)')
ylabel('x(2t), x(t)')
hold off
legend('compressed signal','original signal')


//The resulting figure shows two subplots:

//The first subplot compares the expanded signal with the original signal.
//The second subplot compares the compressed signal with the original signal.
//This visualization helps in understanding how time-scaling (expansion and compression) affects the signal.