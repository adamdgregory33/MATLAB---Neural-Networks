yValues = [1	1	1;
1	1	-1;
1	-1	1;
1	-1	-1;
-1	-1	-1;
-1	1	1;
-1	1	-1;
-1	-1	1];

o = [0;
1;
0;
0;
0;
0;
0;
0];


% Vertex coordinates
p1=[1 0 0];
p2=[0 1 0];
p3=[0 0 -1];
points=[p1' p2' p3']; % using the data given in the question
fill3(points(1,:),points(2,:),points(3,:),'g')
grid on
alpha(0.3)
hold on
scatter3(yValues(logical(o),1),yValues(logical(o),2),yValues(logical(o),3),'red')

scatter3(yValues(~logical(o),1),yValues(~logical(o),2),yValues(~logical(o),3),'blue')
xlabel("Y1,1");
ylabel("Y1,2");
zlabel("Y1,3");

normal = cross(p1-p2, p1-p3);
syms x y z;
P = [x,y,z];
planefunction = dot(normal, P-p1)