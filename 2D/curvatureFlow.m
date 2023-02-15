function phi = curvatureFlow(phi, time_step)
    [phi_x, phi_y] = gradient(phi);
    % second derivative 
    % central difference
    [phi_xx, phi_xy] = gradient(phi_x);
    [~, phi_yy] = gradient(phi_y);
    denomenator = phi_x.^2 + phi_y.^2 + eps;
    numerator = phi_xx .* phi_y .^2 - 2 * phi_xy .* phi_x .* phi_y + phi_yy .* phi_x.^2;
    motion = numerator ./ denomenator;
%     kappa = phi_xx + phi_yy;
%     motion = kappa .* sqrt(phi_x.^2 + phi_y.^2);
    phi = phi + time_step * motion;
end