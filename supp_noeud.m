
function G = supp_noeud(G)
    prompt = "noeuds = ";
    
    nodeIDs = input(prompt);
    G = rmnode(G, nodeIDs);


end