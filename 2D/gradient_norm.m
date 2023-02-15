function n = gradient_norm(dx, dy)
    n = sqrt(dx.^2 + dy.^2 + eps);
end