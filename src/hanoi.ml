let hanoi n =
   let rec func d a i n = (* déplace n disques de d vers a en se servant de i *)
      if n > 0 then begin
         func d i a (n - 1);
         print_string ("Déplacer une tour de "^d^" vers "^a^"\n");
         func i a d (n - 1)
      end
   in func "A" "C" "B" n;; 
(* on déplace n disques de "A" vers "C" en se servant de "B")   
