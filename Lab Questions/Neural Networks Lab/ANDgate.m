clc
clear
x = [0 1 0 1;
    0 0 1 1];
t = [0 0 0 1];

net = perceptron;
net = configure(net,x,t);
xx = repmat(con2seq(x),1,5);
tt = repmat(con2seq(t),1,5);

net = adapt(net,xx,tt);

net(x)
net.LW{1}
net.IW{1}
net.b{1}