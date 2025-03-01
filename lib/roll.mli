(** Fate Dice roller module *)

val df : unit -> int
(** Roll 1dF *)

val roll : int -> int
(** roll ndF *)

val fate : int -> int
(** roll 4dF+n *)
