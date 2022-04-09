## Le problème 06 : Placement de perceptions

 *Où placer ces perceptions pour que la distance moyenne parcourue par un habitant du
département pour atteindre une perception soit minimale ?*

## La modélisation de problème :

### Les variables de décision :
 - y(i) -> c'est un variable boolean qui indique la possède d'un perception (si la ville possède une perception)
 
   (y c'est un tableau , i l'indice da la ville)
 - x(i)(j) -> c'est un variable boolean qui indique la dépendance entre la ville i et la perception qui ce trouve sure la ville j
 
   ( x est un tableau , i l'indice de la ville , j l'indice de la perception)
   
### Les contraintes :
 - la somme de y(i) == 3   
 - la somme de x(i)(j) == 1
 - x(i)(j) =< y(j)
 
### La fonction objectif :
 - min (la somme de produit 𝐻(i)*D(i)(j)*x(i)(j))
 
   sachant que : H(i) -> le nombre d'habitants a la ville i
                 D(i)(j) -> la distance entre la ville i et j
