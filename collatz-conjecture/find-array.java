
public class main{
	public static void main(String args[]){
		long max = Long.parseLong(args[0]);
    int mega = 0;

    for (long i = 1; i <= max; i++) {
      long nbre = i;
      long backupNbre = i;
      int counter = 0;
      while (nbre != 1) {
        nbre = collatz(nbre);
        counter++;
      }

      if (counter > mega) {
	      mega = counter;
	      System.out.println(backupNbre + "\t " + counter);
      }
    }
	}    


  public static long collatz(long nbre){
    if (nbre % 2 == 0) {
      return nbre / 2;
    }
    return nbre * 3 + 1;
  }

}

