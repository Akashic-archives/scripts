/*
 *  Il me faut 3 data structure,
 *    un arbre avec left et right et findLeft et findRight,
 *    un array qui contient les valeurs de 1 a n et qui enleve les valeurs (soit tableau avec toutes les valeurs, soit array qui passe de false a true) au fur et a mesure qu'ils sont trouvees
 *    et une linked list qui contient toutes les feuilles de l'arbre pour simplifier les calculs.
 *
 */


public 	class main{
	public static void main(String args[]){
		int max = Integer.parseInt(args[0]);

	}

  public static int collatz(int nbre){
    if (nbre % 2 == 0) {
      return nbre / 2;
    }
    return nbre * 3 + 1;
  }

}

