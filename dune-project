(lang dune 3.17)

(name fate)

(generate_opam_files true)

(source
 (github MitchCarroll/fate-dice))

(authors "C. Mitch Carroll <c.mitch.carroll@gmail.com>")

(maintainers "C. Mitch Carroll <c.mitch.carroll@gmail.com>")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name fate)
 (synopsis "A dice roller for Fate Dice")
 (description "This project comprises a library for rolling Fate Dice, and ultimately a user app.")
 (depends ocaml)
 (tags
  ("FATE" "dice" "roller" "RPG" "TTRPG")))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
