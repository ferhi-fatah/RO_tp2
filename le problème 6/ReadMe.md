## Le problème 06 : Placement de perceptions

 *Où placer ces perceptions pour que la distance moyenne parcourue par un habitant du
département pour atteindre une perception soit minimale ?*

## La modélisation de problème : 

### Les variables de décision :
 - y(i) -> c'est une variable booléenne  qui indique si une ville possède une perception
 
   (y c'est un tableau , i l'indice da la ville)
   
 - x(i)(j) -> c'est une variable booléenne qui indique la dépendance entre la ville i et la perception qui ce trouve sure la ville j
 
   ( x est un tableau , i l'indice de la ville , j l'indice de la perception)
   
### Les contraintes :
 - la somme de y(i) == 3   
 - la somme de x(i)(j) == 1
 - x(i)(j) =< y(j)
 
### La fonction objectif :
 - min Z = la somme de produit 𝐻(i)*D(i)(j)*x(i)(j)
 
   sachant que : H(i) -> le nombre d'habitants a la ville i
                 D(i)(j) -> la distance entre la ville i et j
                 
## La résolution de problème :
  *Coder Par language OPL , on utulisant " Cplex Studio IDE "*
  
  ### la resultat :
  - La fonction objectif : Z = 2438 Km
  - les variable :
       -  x = ((1 0 0 0 0 0 0 0 0 0 0 0)
             (1 0 0 0 0 0 0 0 0 0 0 0)
             (0 0 0 0 0 1 0 0 0 0 0 0)
             (0 0 0 0 0 1 0 0 0 0 0 0)
             (1 0 0 0 0 0 0 0 0 0 0 0)
             (0 0 0 0 0 1 0 0 0 0 0 0)
             (1 0 0 0 0 0 0 0 0 0 0 0)
             (0 0 0 0 0 0 0 0 0 0 1 0)
             (0 0 0 0 0 1 0 0 0 0 0 0)
             (0 0 0 0 0 0 0 0 0 0 1 0)
             (0 0 0 0 0 0 0 0 0 0 1 0)
             (0 0 0 0 0 0 0 0 0 0 1 0));
       - y = (1 0 0 0 0 1 0 0 0 0 1 0);
       
       ces resultats implique :
       - les ville qui possède des perceptions sont la ville 1 , la ville 6 , la ville 11  .
       - la dépendance des villes :
         - la ville 1 et depend de la perception 1
         - la ville 2 et depend de la perception 1
         - la ville 3 et depend de la perception 6
         - la ville 4 et depend de la perception 6 
         - la ville 5 et depend de la perception 1
         - la ville 6 et depend de la perception 6
         - la ville 7 et depend de la perception 1
         - la ville 8 et depend de la perception 11
         - la ville 9 et depend de la perception 6
         - la ville 10 et depend de la perception 11
         - la ville 11 et depend de la perception 11
         - la ville 12 et depend de la perception 11


              
