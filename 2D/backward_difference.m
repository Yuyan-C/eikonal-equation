function D = backward_difference(phi, direction)
% retune the forward difference in x or y direction 
    if direction == "x"
        D = conv2(phi, [0 1 -1], 'same');
    end
    if direction == "y"
        D = conv2(phi, [0; 1; -1], 'same');
    end
end