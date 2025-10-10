package naive;

import java.util.Scanner;

public class Main {
  public static void main(String[] args) {
    System.out.println("Enter the number:");
    
    Scanner sc = new Scanner(System.in);
    int number = sc.nextInt();
    int steps = 0;

    while (!finished(number)) {
      number = reduce(number);
      steps += 1;
      System.out.println(number);
    }
    System.out.println("Attained in " + steps + " steps");
  }

  public static boolean finished(int number) {
    return number == 1 || number == 5 || number == 0;
  }

  public static int reduce(int number) { // TODO: logic for 5 and 0
    if (number == 12) return 24;
    else if (number == 24) return 28;
    else if (number == 28) return 56;
    else if (number == 56) return 112;
    else if (number == 112) return 16;
    // if number is odd, return it times 2
    else if (number % 2 != 0 || number % 10 == 5) {
      return number * 2;
    } // if the number is even and number/2 is even, return number/2
    else if ((number/2) % 2 == 0) {
      return number/2;
    } // if the number is even and number/2 is odd, return number - (number%10)/2
    else if ((number/2) % 2 == 0) {
      return number - (number%10)/2;
    }
    return 1;
  }

}
