%vtkwrite_sim.m
% https://github.com/joe-of-all-trades/vtkwrite
[x, y, z] = peaks(100);
z = 0.4*z;
tri = delaunay(x, y);
vtkwrite('peaks.vtk', 'polydata', 'triangle', x, y, z, tri);

figure
mesh(z)

figure
surf(z)
colormap("jet");

figure
surfl(z)
colormap("pink");
shading interp
