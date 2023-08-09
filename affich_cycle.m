function [cycles,edgecycles] = affich_cycle(G)
    [cycles,edgecycles] = allcycles(G);
    disp(cycles{1});
end