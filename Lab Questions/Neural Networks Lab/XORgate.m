clc;
clear;
x = [0 1 0 1;
    0 0 1 1];
t = [0 1 1 0];

net = feedforwardnet(2,'trainlm');

net = configure(net,x,t);

net.divideFcn = 'dividetrain';
net = train(net,x,t);

net(x)
net.LW
net.b