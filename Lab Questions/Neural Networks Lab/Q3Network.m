clc;
clear;
x = [0 0.5 0.5 -1.5 -0.7;
    0.5 -0.5 -1 -0.3 0.2];
t = [0 0 1 1 0];

net = feedforwardnet(2,'trainlm');

net = configure(net,x,t);

net.divideFcn = 'dividetrain';
%dividetrain - Partition indices into training set only.
net = train(net,x,t);

net(x)
net.LW{1}
net.IW{1}
net.b{1}