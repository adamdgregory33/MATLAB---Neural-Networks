clc
clear
close all

%Set up sensor data in matrix form
x = [1 1 2 -1 -1 0.25;
    0.5 -0.5 0.5 0.5 -1.5 0.5];

%the given correct or erranous outputs of the system
t = [0 0 0 1 1 1];

%Perceptron is created and configured with the above data
net = perceptron;
net = configure(net,x,t);

xx = repmat(con2seq(x),1,5);
tt = repmat(con2seq(t),1,5);

net = adapt(net,xx,tt);%It is trained with copies of the initial data

net(x)%Verify the final network gives the correct output

figure(1)
scatter(x(1,logical(t)), x(2,logical(t)),'red');
hold on
scatter(x(1, ~logical(t)), x(2, ~logical(t)), 'blue');
plotpc(net.iw{1,1},net.b{1})
xlabel("X1")
ylabel("X2")

%Displays the weights and bias in the network
net.iw{1,1}
net.b{1}