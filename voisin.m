function Neig = voisin(G)
    prompt = "noeud = ";
    noeud = input(prompt);

    Neig = neighbors(G, noeud);
    disp(Neig);
end