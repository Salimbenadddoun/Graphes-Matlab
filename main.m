
13

clc;clear;
test = false;stop = false;

while stop == false
    accept_choix = false;

    while accept_choix == false
        clc;
        entete();
        menu();
        disp('---------------------------------------------------');
        prompt = ">> Entrer votre Choix = ";
        choix = input(prompt);
        accept_choix = test_choix(choix);
    end

    switch choix
        case 1
            clear;
            stop = false;
            clc;
            entete();
            disp('1/ Créer un graphe :');
            disp('--------------------');
                        
            [G, s, t, names, weight] = cree_graph();
            test = true;
        
        case 2
            if test == false
                disp('>Erreur veuillez créer un graphe !');
            else 
                clc;
                entete();
                disp('2/ Afficher le graphe :');
                disp('-----------------------');
                plot_graph(G);  
            end

        case 3
            if test == false
                disp('>Erreur veuillez créer un graphe !');
            else 
                clc;
                entete();
                disp('3/ Créer une matrice d’adjacence MA, vide :');
                disp('-------------------------------------------');           
                ma_vide(G);
            end

        case 4
             if test == false
                disp('>Erreur veuillez créer un graphe !');
             else 
                clc;
                entete();
                disp('4/ Ajouter une arête au graphe :');
                disp('--------------------------------');
                [G, weight] = ajout_arete(G, weight);
             end

        case 5
            if test == false
                disp('>Erreur veuillez créer un graphe !');
            else 
                clc;
                entete();
                disp('5/ Supprimer une arête du graphe :');
                disp('----------------------------------');
                G = supp_arete(G);
            end

        case 6
            if test == false
                disp('>Erreur veuillez créer un graphe !');
            else 
                clc;
                entete();
                disp('6/ Ajouter un sommet au graphe :');
                disp('--------------------------------');
                G = ajout_noeud(G);
            end

        case 7
            if test == false
                disp('>Erreur veuillez créer un graphe !');
            else 
                clc;
                entete();
                disp('7/ Supprimer un sommet du graphe :');
                disp('----------------------------------');
                G = supp_noeud(G);
            end

        case 8
            if test == false
                disp('>Erreur veuillez créer un graphe !');
            else 
                clc;
                entete();
                disp('8/ Afficher la matrice d’adjacence :');
                disp('------------------------------------');
                Ma = ma_full(G);
            end

        case 9
            if test == false
                disp('>Erreur veuillez créer un graphe !');
            else 
                clc;
                entete();
                disp('9/ Calculer l’ordre du graphe :');
                disp('-------------------------------');
                nbNodes = nb_noeuds(G);
            end

        case 10
            if test == false
                disp('>Erreur veuillez créer un graphe !');
            else 
                clc;
                entete();
                disp('10/ Calculer les degrés des sommets du graphe :');
                disp('-----------------------------------------------');
                deg = degree_graph(G);
            end

        case 11
            if test == false
                disp('>Erreur veuillez créer un graphe !');
            else 
                clc;
                entete();
                disp('11/ Afficher le voisinage d’un sommet :');
                disp('---------------------------------------');
                Neig = voisin(G);
            end

       

        case 12
            if test == false
                disp('>Erreur veuillez créer un graphe !');
            else 
                clc;
                entete();
                disp('12/ Afficher un cycle :');
                disp('-----------------------');
                [cycles,edgecycles] = affich_cycle(G);
            end
            
            
        case 13
            if test == false
                disp('>Erreur veuillez créer un graphe !');
            else 
                clc;
                entete();
                disp('13/ Afficher le plus court chemin :');
                disp('-----------------------');
                pcc = plus_crt_chmn(G);
            end    
            
         
        case 00
            clc;
            entete();
            stop = true;

    end

    disp(" ");
    disp('>Pour continuer tapez sur entrée ...');
    prompt = " ";
    tmp = input(prompt);


  
end




