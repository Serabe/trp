function [ element, index ] = find_last( f, vec )
%FIND_LAST Summary of this function goes here
%   Detailed explanation goes here

    [element, index] = find_first(f, vec(length(vec):-1:1));
    
    if index ~= 0
        index = length(vec)-index+1;
    end
end

