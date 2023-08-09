function [G, weight] = ajout_arete(G, weight)
    prompt = "s =  ";
    s = input(prompt);

    prompt = "t =  ";
    t = input(prompt);

    prompt = "weight =  ";
    w = input(prompt);
    weight(length(weight) + 1) = w;

    G = addedge(G, s, t, w);

end