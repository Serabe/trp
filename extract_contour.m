function [ X, Y ] = extract_contour( img )
%EXTRACT_CONTOUR extrae el contorno de la imagen de entrada.
%   Devuelve una lista de pares X,Y.

    num_of_points = sum(sum(img));
    X = zeros(num_of_points, 1);
    Y = zeros(num_of_points, 1);
    [h,w] = size(img);
    
    % Find first pixel in contour.
    i = 1;
    
    [element, index] = find_first(@(x) x ~= 0, img(i, :));
    while i < h && index == 0
        i = i+1;
        [element, index] = find_first(@(x) x ~= 0, img(i,:));
    end
       
    X(1) = i; Y(1) = index;
    
    cont = true;
    
    while(cont)
       
       % Get next element.
       [next_x, next_y] = get_next_element(img, X, Y, @turn_right);
       
       if(next_x > 0 && next_y > 0)
           X(end+1) = next_x;
           Y(end+1) = next_y;
       else
           cont = false;
       end
    end
end

