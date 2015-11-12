(*
 * SNU 4190.310 Programming Languages
 * K-- to SM5 translator skeleton code
 * Jaeseung Choi (jschoi@ropas.snu.ac.kr)
 *)

open K
open Sm5
module Translator = struct
  let rec trans : K.program -> Sm5.command = function
    | K.NUM i -> [Sm5.PUSH (Sm5.Val (Sm5.Z i))]
    | K.TRUE -> [Sm5.PUSH (Sm5.Val (Sm5.B true))]
    | K.FALSE -> [Sm5.PUSH (Sm5.Val (Sm5.B false))]
    | K.UNIT -> [Sm5.PUSH (Sm5.Val (Sm5.Unit))]
    | K.VAR name -> [Sm5.PUSH (Sm5.Id name); Sm5.LOAD]
    | K.ADD (e1, e2) -> trans e1 @ trans e2 @ [Sm5.ADD]
    | K.SUB (e1, e2) -> trans e1 @ trans e2 @ [Sm5.SUB]
    | K.MUL (e1, e2) -> trans e1 @ trans e2 @ [Sm5.MUL]
    | K.DIV (e1, e2) -> trans e1 @ trans e2 @ [Sm5.DIV]
    | K.EQUAL (e1, e2) -> trans e1 @ trans e2 @ [Sm5.EQ]
    | K.LESS (e1, e2) -> trans e1 @ trans e2 @ [Sm5.LESS]
    | K.NOT exp -> trans exp @ [Sm5.NOT]
    | K.ASSIGN (name, exp) -> begin
      trans exp @ [Sm5.PUSH (Sm5.Id name); Sm5.STORE] @
      [Sm5.PUSH (Sm5.Id name); Sm5.LOAD]
    end
    | K.SEQ (ebefore, eafter) -> trans ebefore @ [Sm5.POP] @ trans eafter
    | K.IF (econd, ethen, eelse) -> trans econd @ [Sm5.JTR (trans ethen, trans eelse)]

    | K.WHILE (econd, ebody)
    -> failwith "Unimplemented"
    | K.FOR (econd, efrom, eto, ebody)
    -> failwith "Unimplemented"

    | K.LETV (x, e1, e2) -> begin
      trans e1 @ [Sm5.MALLOC; Sm5.BIND x; Sm5.PUSH (Sm5.Id x); Sm5.STORE] @
      trans e2 @ [Sm5.UNBIND; Sm5.POP]
    end

    | K.LETF (name, param, ebody, eafter)
    -> failwith "Unimplemented"
    | K.CALLV (name, eparam)
    -> failwith "Unimplemented"
    | K.CALLR (name, param)
    -> failwith "Unimplemented"

    | K.READ x -> [Sm5.GET; Sm5.PUSH (Sm5.Id x); Sm5.STORE; Sm5.PUSH (Sm5.Id x); Sm5.LOAD]

    | K.WRITE exp
    -> failwith "Unimplemented"
end
