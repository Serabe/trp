function [ new_x, new_y ] = turn_left( mov_x, mov_y )
%TURN_LEFT Dado un vector movimiento devuelve uno un paso a la izquierda.
%   Representa un giro en la bola de norma infinito.
    
    new_x = mov_x;
    new_y = mov_y;
    norma = mov_norm(mov_x, mov_y);
    
    switch mov_x
        case norma
            if mov_y == norma
                new_x = mov_x - 1;
            else
                new_y = mov_y + 1;
            end
            
        case -norma
            if mov_y == -norma
                new_x = mov_x + 1;
            else
                new_y = mov_y - 1;
            end
            
        otherwise
            switch mov_y
                case norma
                    new_x = mov_x - 1;
                case -norma
                    new_x = mov_x + 1;
            end
    end     
end

