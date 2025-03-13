(* Fate Dice roller *)

let () = Unix.time () |> Int.of_float |> Random.init

let df () = Random.int 3 - 1

let roll n =
  let count = ref 0 in
  for _ = 1 to n do
    count := !count + df ()
  done;
  !count

let fate n = n + roll 4

let adv n = 
    let bonus = match df () with
    | (-1) -> 0
    | 0
    | 1    -> 1
    | _ -> 0
    in bonus + roll 3 + n

let dis n =
    let bonus = match df () with
    | (-1)
    | 0 -> (-1)
    | 1 -> 0
    | _ -> 0
    in bonus + n + roll 3
