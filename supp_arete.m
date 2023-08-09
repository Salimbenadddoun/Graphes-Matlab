function G = supp_arete(G)
    prompt = "s =  ";
    s = input(prompt);

    prompt = "t =  ";
    t = input(prompt);

    G = rmedge(G, s, t);

end