r = input('input a circle radius: ');
x = linspace(0, 2*r);
y = linspace(0, 2*r);
xcircle = r; ycircle = r;
N = 40000;
nImages = 0;
fig = figure;
nInside = 0;
th = 0:pi/50:2*pi;
xunit = r * cos(th) + r;
yunit = r * sin(th) + r;
plot(xunit, yunit);
hold on;
for i = 1:N
    pnt(i) = point(2*r);
    if ((pnt(i).x - r)^2 + (pnt(i).y - r)^2) < r^2 
        nImages = nImages + 1;
        scatter(pnt(i).x, pnt(i).y, 5, 'filled', 'MarkerFaceColor', 'r');
        nInside = nInside + 1;
    else 
        nImages = nImages + 1;
        scatter(pnt(i).x, pnt(i).y, 5, 'filled', 'MarkerFaceColor', 'b');
    end
    pie = (4*nInside) / i;
    pi_value = strcat('pi=', num2str(pie));
    hold on;
    axis tight;
    axis([0 2*r 0 2*r]);
    h = text(2*r, 2*r, pi_value); 
    drawnow
    frame = getframe(fig);
    im{nImages} = frame2im(frame);
    delete(h);
end 
