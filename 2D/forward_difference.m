function D = forward_difference(phi, direction)
% return the backward difference in x or y direction 
    if direction == "x"
        D = conv2(phi, [1 -1], 'same');
    end
    if direction == "y"
        D = conv2(phi, [1; -1], 'same');
    end
end