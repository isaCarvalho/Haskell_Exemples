soma_poli [] [] = []
soma_poli [] (cab2:corpo2) = (cab2:corpo2)
soma_poli (cab1:corpo1) [] = (cab1:corpo1)
soma_poli (cab1:corpo1) (cab2:corpo2)
    | (snd cab1) > (snd cab2) = [cab1] ++ soma_poli (corpo1) (cab2:corpo2)
    | (snd cab1) < (snd cab2) = [cab2] ++ soma_poli (cab1:corpo1) (corpo2)
    | otherwise = [((fst cab1) + (fst cab2), (snd cab2))] ++ soma_poli (corpo1) (corpo2)


