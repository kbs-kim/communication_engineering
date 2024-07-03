//This MATLAB script demonstrates a signal manipulation process where values of a cosine signal are clipped at ±0.5 and plotted. 

t=0:0.001:4;
vs=cos(pi*t); x=vs;
N=length(t);

//t is the time vector ranging from 0 to 4 with a step size of 0.001 seconds.
//vs is the original signal, a cosine wave with a period determined by pi*t.
//x is a copy of the original signal.
//N is the length of the time vector t.



for k=1:N
    if abs(vs(k))>=0.5
        if vs(k)<0
            vs(k)=-0.5;
        else
            vs(k)=0.5;
        end
    end
end

//A for loop iterates over each element of the signal vs.
//If the absolute value of vs(k) is greater than or equal to 0.5:
//If vs(k) is negative, it is set to -0.5.
//If vs(k) is positive, it is set to 0.5.
//This effectively clips the signal values to be within the range [-0.5, 0.5].

y=vs;
//y is assigned the clipped signal values from vs.


figure(1)
plot(t,x); grid on; hold on;
plot(t,y,'or')
axis([0 4 -1.1 1.1])
legend('x(t)','y(t)')
xlabel('t')
hold off

//figure(1) creates a new figure window.
//plot(t,x) plots the original cosine signal x against time t.
//grid on adds a grid to the plot.
//hold on allows multiple plots on the same axes.
//plot(t,y,'or') plots the clipped signal y against time t using red circles for markers.
//axis([0 4 -1.1 1.1]) sets the axis limits for better visualization.
//legend('x(t)','y(t)') adds a legend to differentiate between the original and clipped signals.
//xlabel('t') labels the x-axis as t.
//hold off releases the hold on the current plot.




/*
The resulting figure shows the original cosine signal and the clipped signal, 
visually illustrating the effect of clipping on the signal values. 
The original signal varies smoothly between -1 and 1, 
while the clipped signal is constrained to the range [-0.5, 0.5].
*/

