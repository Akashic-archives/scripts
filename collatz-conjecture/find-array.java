
public 	class main{
	public static void main(String args[]){
		int max = Integer.parseInt(args[0]);
    int top[][] = new int[100][2];

    for (int i = 1; i <= max; i++) {
      int nbre = i;
      int counter = 0;
      while (nbre != 1) {
        nbre = collatz(nbre);
        counter++;
      }

      for (int j = 0; j < top[1].length; j++) {
        if (top[j][0] <= counter) {
          top[j][0] = counter;
          top[j][1] = nbre;
          break;
        }
      }
    }

    for (int i = 0; i < top[1].length; i++) {
      System.out.println(top[i][1] + " took " + top[i][0] + " steps");
    }

	}

  public static int collatz(int nbre){
    if (nbre % 2 == 0) {
      return nbre / 2;
    }
    return nbre * 3 + 1;
  }

}

