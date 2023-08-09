function accept_choix = test_choix(choix)
    if isnumeric(choix) == true
        accept_choix = true;
    else 
        accept_choix = false;
    end
end