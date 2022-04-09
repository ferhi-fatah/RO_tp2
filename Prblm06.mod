/*********************************************
 * OPL 12.6.0.0 Model
 * Author: ibs
 * Creation Date: 4 avr. 2022 at 14:00:10
 *********************************************/


range I = 1..12;
range J = 1..12;
dvar boolean y[J]; //y[j] c'est un variable qui indique est ce que la ville i despose une Perception
dvar boolean x[I][J]; // x[i][j] c'est un variable qui indique est ce que la ville i est depende de Perception de la ville j
int habitants[I]=[15,10,12,18,5,24,11,16,13,22,19,20];
int Distance[I][J]=[[0,15,37,55,24,60,18,33,48,40,58,67],
					[15,0,22,40,38,52,33,48,42,55,61,61],
					[37,22,0,18,16,30,41,28,20,58,39,39],
					[55,40,18,0,34,12,59,46,24,62,43,34],
					[24,38,16,34,0,36,25,12,24,47,37,43],
					[60,52,30,12,36,0,57,42,12,50,31,22],
					[18,33,41,59,25,57,0,15,45,22,40,61],
					[33,48,28,46,12,42,15,0,30,37,25,46],
					[48,42,20,24,24,12,45,30,0,38,19,19],
					[40,55,58,62,47,50,22,37,38,0,19,40],
					[58,61,39,43,37,31,40,25,19,19,0,21],
					[67,61,39,34,43,22,61,46,19,40,21,0]];

 
minimize sum( i in I , j in J )  (habitants[i]*Distance[i][j]*x[i][j]) ;


subject to {

	sum( i in I ) y[i] == 3;
	
	forall(i in I){
		
		sum( j in J ) x[i][j] == 1;
		
    }	
    
    forall(i in I ){
    forall(j in J)  {  
    
        x[i][j]<=y[j];
    }	}		
}

//----------------------------POST TRAITEMENT--------------------------------
execute DISPLAY
{
	

		write("km");

     write("les villes ou on place les perceptions sont :  \n");
	 for (var i in I) {
        if(y[i] == 1){
         write("   - la ville "+ i +"\n");
       }         
    }
    write("les villes  sont depend de :  \n");
    for (var f in I) {
    	   for (var j in J) {
	    	if(x[f][j] == 1){
	           write("   - la ville "+ f +" et depend de la perception "+ j+"\n");
	       }}         
    }
}



