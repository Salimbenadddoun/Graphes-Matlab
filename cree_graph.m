
function [G, s, t, names, weight] = cree_graph
    disp('Utiliser la modilisation predefini du projet ?');
    prompt=("y/n :");
    disp("");
    bool = input(prompt,"s");
    
    if bool == 'n'
        disp('Vecteur des noeuds sources :');   
        prompt = "s =  ";
        s = input(prompt);

        disp('Vecteur des noeuds destinations :');    
        prompt = "t =  ";
        t = input(prompt);

        disp('Vecteur des noms :');
        prompt = "names =  ";
        names = input(prompt);

        disp('Vecteur des poids :');  
        prompt = "weight =  ";
        weight = input(prompt);
    else 
        s = [1 1 1 1 2 2 2 2 3 3 3 4 4 5];
        t = [2 3 4 5 3 4 5 6 4 5 6 5 6 6];
        names = {'Oran', 'Chlef', 'Alger', 'Setif', 'Biskra', 'Constantine'};
        weight = [216.8 421.2 667.0 781.5 209.9 455.7 579.1 569.7 266.4 389.8 433.2 127.0 209.3 235.7];
    end
    
    G = graph(s, t, weight, names);
end
