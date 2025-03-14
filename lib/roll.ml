(* Fate Dice roller *)

let () = Unix.time () |> Int.of_float |> Random.init

let df () = Random.int 3 - 1

let da () = match df () with
| (-1) -> 0
| 0 
| 1 -> 1
| _ -> 0

let dd () = match df () with
| (-1) 
| 0 -> (-1)
| 1 -> 0
| _ -> 0

let rolls f n = List.init n (fun _ -> f ()) |> List.fold_left (+) 0

let roll n = rolls df n

let fate n = n + roll 4

let adv a n = n + rolls da a + rolls df (4 - a)

let dis d n = n + rolls dd d + rolls df (4 - d)

