function [ new_x, new_y ] = inc_norm( mov_x, mov_y )
%INC_NORM Aumenta en uno la norma del vector movimiento.
%   Aumenta en uno la norma del vector movimiento. Para ello,
%   compara cada coordenada con la norma y, si es necesario,
%   aumenta en uno dicha coordenada.

    norma = mov_norm(mov_x, mov_y);
    new_x = mov_x;
    new_y = mov_y;
    
    if abs(mov_x) == norma
        new_x = sign(mov_x) + mov_x;
    end
    
    if abs(mov_y) == norma
        new_y = sign(mov_y) + mov_y;
    end
end

