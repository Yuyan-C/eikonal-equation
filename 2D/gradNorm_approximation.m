function gradNorm = gradNorm_approximation(phi, type)
    Dbd_x = backward_difference(phi, "x");
    Dbd_y = backward_difference(phi, "y");
    Dfd_x = forward_difference(phi, "x");
    Dfd_y = forward_difference(phi, "y");

    if type == "positive"
        gradNorm = (max(Dbd_x, 0).^2 + min(Dfd_x, 0).^2 + max(Dbd_y, 0).^2 + min(Dfd_y, 0).^2).^(1/2);   
    end
    
    if type == "negative"
        gradNorm = (min(Dbd_x, 0).^2 + max(Dfd_x, 0).^2 + min(Dbd_y, 0).^2 + max(Dfd_y, 0).^2).^(1/2);   
    end

end


