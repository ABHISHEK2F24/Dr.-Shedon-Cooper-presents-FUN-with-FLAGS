function main()
   
  clf;
  shg;

 
  prepareCanvas(4, 24700, 13000);
  drawFlagUSA();


end

function drawStar(O, x1, color)
  theta = atan2(x1(2) - O(2), x1(1) - O(1));
  t = linspace(theta,theta + pi * 2, 11);
  r = norm(O - x1);
  R = r * sin(pi / 10) / cos(pi / 5);
  X = cos(t);
  Y = sin(t);

  p = [repmat([r, R], 1, 5), r];

  X = X .* p + O(1);
  Y = Y .* p + O(2);
  fill(X, Y, cc(color), 'edgecolor', 'none');
end

function drawRectangle(X1, X2, X3, color)
     drawRectangle
     variable dictionary
     X1, X2, X3 dots
     color      color

  X4 = X1 - X2 + X3;
  X = [X1(1) X2(1) X3(1) X4(1) X1(1)];
  Y = [X1(2) X2(2) X3(2) X4(2) X1(2)];
  fill(X, Y, cc(color), 'edgecolor', 'none'); 

end

function drawRectangleXY(x1, y1, x2, y2, color)
  drawRectangle([x1 y1], [x2 y1], [x2 y2], color);
end

function prepareCanvas(n, w, h) 
  subplot(3, 3, n);
  axis equal, axis([0, w, 0, h]);
  hold on, axis off;
end



function drawFlagUSA()
  RED   = 'B22234';
  BLUE  = '3C3B6E';
  WHITE = 'FFFFFF';
  
  drawRectangleXY(0, 0, 24700, 13000, RED);
  for i = 1:6
    drawRectangleXY(0, 2000 * i, 24700, 2000 * i - 1000, WHITE);
  end

  drawRectangleXY(0, 13000, 9876, 6000, BLUE);

  for t = 0:5
    for r = 0:4
      pp = [823 + 1646 * t, 12300 - 1400 * r];
      drawStar(pp, pp + [0, 400], WHITE);
    end
  end

  for t = 1:5
    for r = 1:4
      pp = [1646 * t, 13000 - 1400 * r];
      drawStar(pp, pp + [0, 400], WHITE);
    end
  end

end

main()
