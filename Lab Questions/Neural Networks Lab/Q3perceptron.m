clc
clear
close all
x = [0 0.5 0.5 -1.5 -0.7;
    0.5 -0.5 -1 -0.3 0.2];
t = [0 0 1 1 0];

figure(1)
scatter(x(1,logical(t)), x(2,logical(t)),'red');
hold on
scatter(x(1, ~logical(t)), x(2, ~logical(t)), 'blue');

net = perceptron;
net = configure(net,x,t);
xx = repmat(con2seq(x),1,5);
tt = repmat(con2seq(t),1,5);

net = adapt(net,xx,tt);

net(x)
net.LW{1}
net.IW{1}
net.b{1}