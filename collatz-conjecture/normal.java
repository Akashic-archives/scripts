
public 	class main{
	public static void main(String args[]){
		int nbre = Integer.parseInt(args[0]);
		int counter = 0;
		System.out.println(nbre);
		while (nbre != 1) {
			if (nbre % 2 == 0)
				nbre = nbre / 2;
			else
				nbre = nbre * 3 + 1;
			System.out.println(nbre);
			counter++;
		}
		System.out.println("It took " + counter + " steps.");
	}
}

