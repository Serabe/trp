function [ X1, Y1, X2, Y2 ] = bounding_box( img, bg )
%BOUNDING_BOX Finds the bounding box of the image.
%   Returns
%   X1 x coordinate of the upper left corner
%   Y1 y coordinate of the upper left corner
%   X2 x coordinate of the bottom right corner
%   Y2 y coordinate of the bottom right corner
%   Corners are supposed to be included in image.
    [h, w] = size(img);
    X1 = h; Y1 = w;
    X2 = 0; Y2 = 0;
    
    for x = 1:h
       [ie, ii] = find_first(@(x) x ~= bg, double(img(x,:)));
       [fe, fi] = find_last(@(x) x ~= bg, double(img(x, :)));
       
       if ii ~= 0
          if x < X1
              X1 = x;
          end
          if ii < Y1
              Y1 = ii;
          end
       end
       
       if fi ~= 0
          if x > X2
              X2 = x;
          end
          if fi > Y2
              Y2 = fi;
          end
       end
    end
end