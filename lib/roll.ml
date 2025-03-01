(* Fate Dice roller *)

let () = Unix.time () |> Int.of_float |> Random.init

let df () = Random.int 3 - 1

let roll n = 
    let count = ref 0
    in for _ = 1 to n
    do 
        count := !count + df ()
    done;
    !count

let fate n = n + roll 4

