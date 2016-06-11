# Algorithme

Le problème des tours de Hanoï se résout assez facilement de manière récursive : déplacer $n$ disques de la tour $A$ à la tour $C$ revient à déplacer $n - 1$ disques de la tour $A$ à la tour $B$, puis déplacer le dernier disque de la tour $A$ à la tour $C$ et enfin déplacer les $n - 1$ disques de la tour $B$ à la tour $C$. Pour déplacer les $n -1$ disques on utilise la même méthode, jusqu'à ce que l'on obtienne un unique disque à déplacer et ça on sait le faire.

Il s'agit donc de déplacer les $n$ disques d'une tour à une autre en se servant d'une tour intermédiaire. Écrivons un algorithme en CamL qui se charge d'afficher les différents déplacements à faire :

```caml
let hanoi n =
   let rec func d a i n = (* déplace n disques de d vers a en se servant de i *)
      if n > 0 then begin
         func d i a (n - 1);
         print_string ("Déplacer une tour de "^d^" vers "^a^"\n");
         func i a d (n - 1)
      end
   in func "A" "C" "B" n;;
```
   
Avec `hanoi 2` on obtient ce résultat.
   
```
Déplacer une tour de A vers B
Déplacer une tour de A vers C
Déplacer une tour de B vers C
```
 
Ce qui semble correct et correspond en tout cas à ce que l'on voulait.
