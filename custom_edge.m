function [ img ] = custom_edge( orig, border )
%CUSTOM_EDGE Returns orig with a canny edge applied.
%   It extracts the bounding box and then adds a few black rows and columns
%   (border determines how many rows or columns are added to each side).
%   Then it applies an edge with 'canny'.
    [X1,Y1,X2,Y2] = bounding_box(orig, 0);
    orig_h = X2-X1+1;
    orig_w = Y2-Y1+1;
    img = zeros(orig_h + 2*border, orig_w + 2*border);
    offset = border+1;
    img(offset:(offset+orig_h-1),offset:(offset+orig_w-1)) = orig(X1:X2,Y1:Y2);
    img = edge(img,'canny');
end

