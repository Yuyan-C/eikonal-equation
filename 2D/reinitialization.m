function phi = reinitialization(phi)
    phi = sign(phi);
    phi(phi == 1) = 0;
    phi(phi == -1) = 1;
    phi = get_embedding(phi);
end
