# FATE Dice

## Summary
This is a simple project that provides a library of functions to simulate FATE dice in OCaml.


FATE dice are special 6-sided dice (usually annotated as dF, rather than d6). Each die has two blank sides, two sides with a '-', and two sides with a '+'. 
When rolled, the '+'s are added, and the '-'s are subtracted, and the resulting value (positive or negative) is added to any modifiers, and compared to a target value to determine success.
Typically, a FATE roll is 4dF. Sometimes, a roll is made with a certain degree of advantage or disadvantage. For these rolls, 4dF are still rolled, but any advantage or disadvantage dice are represented by FATE dice of a different color 
(or some other visual distinction). Advantages and disadvantages cancel each other out (e.g.: an advantage of 2, and a disadvantage of 1 results in an advantage of 1). The advantage or disadvantage dice are rolled with the normal FATE dice (replacing however
many of them are needed to make exactly 4 dice rolled). After they are rolled, advantage dice are 'promoted' to the next value up ('+' remains unchanged), and disadvantage dice are 'demoted' to the enext value down ('-' remains unchanged).
'-' Can be thought of as -1, blank is 0, and '+' is 1.


For example, the GM wants a player to make a FATE roll using one of his character's modifiers (a +3), against a difficulty value he chooses (a +1). That character has the element of surprise (1 advantage), but is wounded and using an unfamiliar weapon (2 disadvantage).
The roll is then 4dF+3 with 1 disadvantage die. The player takes 3 normal dice, and 1 alternate die, and rolls them. The normal dice come up '+', '+', blank, and the disadvantage die comes up blank, but is demoted to a '-'. The value of the roll is then +1. The player then adds his +3 modifier, making the final value of the roll +4, which easily defeats the +1 difficulty value.

## Prerequisites
- OPAM
  - dune
  - utop (for interactive use of the library)

 ## OCaml Setup Instructions
 1. If you don't have it already, install OPAM by the method recommended for your OS
  * https://opam.ocaml.org/doc/Install.html
 2. Once installed, run `opam init` from the command line, and follow any on-screen instructions
  * there may be some commands you need to copy and paste to complete installation, and you may need to close your terminal and reopen it.
  
## Build Instructions
1. From the project root directory, run: `opam switch create .`
   * This will create a 'switch' for opam to install packages into that is specific to the project, instead of globally
   * If anything gets messed up, you can always just clear the `_opam` folder and try again
   * It is possible to use the default switch, but this way is tidier
2. Follow the on-screen prompts, including running any commands given to complete the process
3. If you want to use the library from an interactive command prompt, run: `opam install utop`, and follow the on-screen prompts
4. Finally, run `dune build`

## To use library in REPL
1. In the terminal, from the project root directory, run: `dune utop`
2. From the utop REPL prompt, enter: `open Fate.Roll;;`
3. you can now call any of the functions in lib/roll.mli interactively
   * For example, to roll 4dF+1, enter: `fate 1;;`.
   * Remember that negative numbers usually need to be wrapped in parentheses. e.g.: `fate (-2);;` rolls 4dF-2
   * Obviously, 4dF with no modifiers is: `fate 0;;`
5. Ctrl+D or `exit 0;;` will quit the REPL 

## TODO:
- create a suite of command line executables to perform these functions
- create a web app that will let the user make rolls graphically, and log the output
- create a mobile app to do likewise
