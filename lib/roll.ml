(* Fate Dice roller *)

let () = Unix.time () |> Int.of_float |> Random.init

let df () = Some ((Random.int 3) - 1)

let da () = 
    match Option.get (df ()) with
    | (-1) -> Some 0
    | 0 
    | 1 -> Some 1
    | _ -> None

let dd () = 
    match Option.get (df ()) with
    | (-1) 
    | 0 -> Some (-1)
    | 1 -> Some 0
    | _ -> None

let rolls f n = 
    List.init n (fun _ -> f () |> Option.get) 
    |> List.fold_left (+) 0

let roll n = rolls df n

let fate n = n + roll 4

let adv a n = n + rolls da a + rolls df (4 - a)

let dis d n = n + rolls dd d + rolls df (4 - d)

