function phi = get_embedding(curve)
    innerDist = bwdist(curve);
    outerDist = -1 * bwdist(~curve);
%     innerDist = -bwdist(curve);
%     outerDist = bwdist(~curve);
    phi = innerDist + outerDist;
    phi = imgaussfilt(phi, 0.5);
end

% zero level set - smooth
% sample a row or col to visualize it as a graph
% plot the distance value
% shift by 1 