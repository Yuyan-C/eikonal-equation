I = imread("images/spiral128.png");
I = imbinarize(rgb2gray(I));
phi = get_embedding(I);
surf(phi);

% phi_t = |grad phi|

for i = 0:60000
%    phi = geometricFlow(phi, 000.1, -1); % constant motion
    phi = curvatureFlow(phi, 0.01);
%     contour(phi, [0 0])
%     hold off
%     pause(.01);
%     if mod(i, 1000) == 0
%         contour(phi, [0 0])
%         hold off
%         pause(.0001);
%     end
    if mod(i, 1000) == 0
        contour(phi, [0 0])
        hold off
        pause(.0001);
        phi = reinitialization(phi);
    end
end
