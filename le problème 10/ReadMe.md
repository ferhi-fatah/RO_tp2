## Le problème 10 :

 *Déterminer les deux villes à choisir comme hub de façon à minimiser les coûts de transport*

## La modélisation de problème :

### Les variables de décision :
 - flow_ijkm(i)(j)(k)(m) -> c'est un variable boolean qui indique si le fret transporté de i à j passe par les hubs k et m
   (y c'est un tableau , i l'indice da la ville)
 - hub(i) -> c'est un variable boolean qui indique si la ville est possède un hub
   
### Les contraintes :
 - la somme de flow_ijkm(i)(j)(k)(m) == 1   
 - flow_ijkm(i)(j)(k)(m) <= hub(k)
 - flow_ijkm(i)(j)(k)(m) <= hub(m)
 
### La fonction objectif :
 - min Z = la somme de produit flow_ijkm(i)(j)(k)(m)*Q(i)(j)*C(i)(j)(k)(m)
                 
## La résolution de problème :
  *Coder Par language java cplex , on utulisant l'ide Eclipse*
  
  ### la resultat :
  - La fonction objectif : Z =  3.9498e+7 euro 
  - hub=(000011) -> les hub seront a la ville Nice et Paris
 
