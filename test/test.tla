---- MODULE test ----

VARIABLE color

TypeOk == color \in {"red","green","yellow"}

AlwaysTypeOk == [] TypeOk

Init == color = "red"

TurnGreen == 
    /\ color = "red" 
    /\ color' = "green" 

TurnYellow ==  
    /\ color = "green" 
    /\ color' = "yellow" 

TurnRed ==  
    /\ color = "yellow" 
    /\ color' = "red" 

Next == \/ TurnGreen 
        \/ TurnYellow 
        \/ TurnRed

Spec == Init /\ [][Next]_color

====