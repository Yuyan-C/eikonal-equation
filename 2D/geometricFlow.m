function phi = geometricFlow(phi, time_step, F)
    % use upwind scheme
    gradNormPos = gradNorm_approximation(phi, "positive");
    gradNormNeg = gradNorm_approximation(phi, "negative");
    phi = phi - time_step * (max(-1 * F, 0).* gradNormPos + min(-1 * F, 0).* gradNormNeg);
end







