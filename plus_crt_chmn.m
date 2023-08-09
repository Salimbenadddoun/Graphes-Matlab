function pcc = plus_crt_chmn(G)


 s = input('Veuillez donnez le sommet de départ : ');
 t = input('Veuillez donnez le sommet d arrivée : ');
 pcc = shortestpath(G,s,t) ;
 disp(pcc) ;
   end