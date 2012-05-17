function [ next_x, next_y ] = get_next_element( img, X, Y, turn )
%GET_NEXT_ELEMENT devuelve el siguiente punto a visitar.
%   Empieza por el punto superior y va girando según indique el método
%   turn. Si devuelve cero en ambos es que no hay siguiente.

    mov_x = -1; mov_y = 0;
    num_turns = 0;
    next_x = 0; next_y = 0;
    [h w] = size(img);
    
    while( num_turns < 9 )
        cur_x = X(end) + mov_x;
        cur_y = Y(end) + mov_y;
        
        if cur_x < 1 || cur_x > h || cur_y < 1 || cur_y > w
            [mov_x mov_y] = turn(mov_x, mov_y);
        elseif( img(cur_x, cur_y) == 1 && ~is_in(cur_x, cur_y, X, Y))
            next_x = cur_x; next_y = cur_y;
            break;
        else
            [mov_x mov_y] = turn(mov_x, mov_y);
        end
        num_turns = num_turns + 1;
    end

end

