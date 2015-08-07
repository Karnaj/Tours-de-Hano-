#Complexité
Le but est maintenant de savoir combien de déplacements il faut pour déplacer
$n$ disques de la tour $A$ à la tour $C$. On obtient tout de suite que déplacer 
$n$ disques c'est :

- Déplacer $n - 1$ disques
- Déplacer $1$ disque
- Déplacer $n - 1$ disques

Et donc si on note $D(n)$ le nombre de déplacements à faire pour $n$ disques,
on a $D(n + 1) = 2D(n) + 1$ avec $D(0) = 0$ et $D(1) = 1$. Cela correspond 
à une suite arithmético-géométrique. Posons $v_n = D(n) - l$ avec $l = 2l + 1$. 
On a donc :

\[
\begin{aligned}
   l = 2l + 1 &\iff l(1 - 2) = 1 \\
              &\iff l = -1.
\end{aligned}
\]

De plus,

\[
\begin{aligned}
   v_{n + 1} &= D(n + 1) - l\\ 
             &= 2D(n) + 1 - 2l - 1\\
             &= 2(D(n) - l)\\ 
             &= 2v_n.
\end{aligned}
\]

La suite $v_n$ est donc géométrique d'où le résultat $v_n = 2^n v_0$  avec par définition $v_0 = D(0) - l = 1$.
Or, $D(n) = v_n + l = 2^nv_0 + l$.

Et donc finalement, pour tout entier naturel $n$, le nombre de déplacements à effectuer
pour déplacer $n$ disques de la tour $A$ à la tour $C$ est

\[
   D(n) = 2^n - 1.
\]
