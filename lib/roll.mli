(** Fate Dice roller module *)
(** A FATE die is a special 6-sided die (d6) that has 2 blank sides, 2 '+' sides, and 2 '-' sides.
    The possible values for each FATE die are -1, 0, and +1. In effect, it is equivalent to 1d3-1.
    The standard notation for a FATE die is 'dF'. Thus rolling 3 FATE dice is written as '3dF'. *)

(** [roll n] roll ndF *)
val roll : int -> int

(** [fate n] roll 4dF+n.
    This is the standard FATE dice roll used in the FATE RPG rules. *)
val fate : int -> int

(** [adv a n] roll 4dF+n with [a] advantage dice.
    Advantage means that one of the dice has its
    value increased by 1 (but no more than the regular
    max value of that die) *)
val adv : int -> int -> int

(** [dis d n] roll 4dF+n with [d] disadvantage dice.
    Disadvantage works like advantage, but
    with the bonus die rolls REDUCED by one value. *)
val dis : int -> int -> int
