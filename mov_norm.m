function [ n ] = mov_norm( mov_x, mov_y )
%MOV_NORM Dado un vector movimiento devuelve la "norma" de dicho vector.
%   La norma de un vector movimiento quedar� definida por la mayor
%   coordenada en t�rminos absolutos.

    n = max(abs([mov_x, mov_y]));
end

