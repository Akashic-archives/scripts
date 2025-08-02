
public class main{
	public static void main(String args[]){
		int max = Integer.parseInt(args[0]);
    int mega = 0;

    for (int i = 1; i <= max; i++) {
      int nbre = i;
      int backupNbre = i;
      int counter = 0;
      while (nbre != 1) {
        nbre = collatz(nbre);
        counter++;
	      System.out.println(nbre);
      }

      if (counter > mega) {
	      mega = counter;
	      System.out.println(backupNbre + "\t " + counter);
      }
    }
	}    


  public static int collatz(int nbre){
    if (nbre % 2 == 0) {
      return nbre / 2;
    }
    return nbre * 3 + 1;
  }

}

