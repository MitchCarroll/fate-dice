(** Fate Dice roller module *)

(** Roll 1dF *)
val df : unit -> int

(** roll ndF *)
val roll : int -> int

(** roll 4dF+n *)
val fate : int -> int
