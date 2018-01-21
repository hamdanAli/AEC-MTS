%% Use drawnow limitrate for Fast Animation
% Use a loop to add 100,000 points to an animated line. Since the number of
% points is large, using |drawnow| to display the changes might be slow.
% Instead, use |drawnow limitrate| for a faster animation.

% Copyright 2015 The MathWorks, Inc.


h = animatedline('Marker','o');
%axis([0,4*pi,-1,1])

numpoints = 10;

for k = 1:numpoints
    x=mav.get_LocalNED(1).x;
    y=mav.get_LocalNED(1).y;
    addpoints(h,x,y)
    drawnow limitrate
end