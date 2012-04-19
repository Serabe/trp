function [ element, index ] = find_first( f, vec )
%FIND_FIRST Find the first element in vector vec such that f(vec) is true.
%   Returns the element and the index. If both are zero there is no such
%   element.

    l = length(vec);
    i = 1;
    element = 0;
    index = 0;
    
    while i <= l && ~f(vec(i))
        i = i+1;
    end
    
    if i <= l
       element = vec(i);
       index = i;
    end
end

