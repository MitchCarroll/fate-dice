(* Fate Dice roller *)
open Unix;;

let () = Unix.time () |> Int.of_float |> Random.init;;

let roll n = 
    let df () = Random.int 3 - 1
    in let count = ref 0
    in for c = 1 to n
    do 
        count := !count + df ()
    done;
    !count;;

let fate n = n + roll 4;;

