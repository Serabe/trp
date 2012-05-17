function [ is ] = is_in( find_x, find_y, set_X, set_Y )
%IS_NOT_IN Summary of this function goes here
%   Detailed explanation goes here

    is = any(set_Y(set_X == find_x) == find_y);
end

