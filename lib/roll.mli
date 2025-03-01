(** Fate Dice roller module *)
(** A FATE die is a special 6-sided die (d6) that has 2 blank sides, 2 '+' sides, and 2 '-' sides.
    The possible values for each FATE die are -1, 0, and +1. In effect, it is equivalent to 1d3-1.
    The standard notation for a FATE die is 'dF'. Thus rolling 3 FATE dice is written as '3dF'. *)

(** [df ()] Roll 1dF *)
val df : unit -> int

(** [roll n] roll ndF *)
val roll : int -> int

(** [fate n] roll 4dF+n.
    This is the standard FATE dice roll used in the FATE RPG rules. *)
val fate : int -> int

