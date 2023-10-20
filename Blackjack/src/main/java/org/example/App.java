import java.util.ArrayList;
import java.util.Locale;
import java.util.Scanner;
import java.util.Random;


/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args ) {
        Scanner object = new Scanner(System.in);
        Random rand = new Random();
        System.out.println( "Hi, I'm Kyle. Welcome to the casino! Here to play blackjack?");
        String yesOrNo = object.nextLine().toLowerCase();
        if (yesOrNo.contains("ye")) {
            System.out.println("How old are you?");
            int age = object.nextInt();
            if (age < 18)
                System.out.println("Unfortunately, UK law states that you must be 18 or over to gamble. Please leave.");
            else {
                System.out.println("Then come on in, let's play!");
                int playerCard1 = rand.nextInt(10) + 1;
                int playerCard2 = rand.nextInt(10) + 1;
                int dealerCard1 = rand.nextInt(10) + 1;
                int dealerCard2 = rand.nextInt(10) + 1;
                ArrayList<Integer> playerHand = new ArrayList<>();
                playerHand.add(playerCard1);
                playerHand.add(playerCard2);
                ArrayList<Integer> dealerHand = new ArrayList<>();
                dealerHand.add(dealerCard1);
                dealerHand.add(dealerCard2);
                System.out.println("Your cards are:");
                for (int i : playerHand) {
                    System.out.println(i);
                };
                int playerSum = 0;
                for (int i : playerHand) {
                    playerSum += i;
                }
                System.out.println("Your total is " + playerSum);
                int dealerSum = 0;
                for (int i : dealerHand) {
                    dealerSum += i;
                }
                boolean carryOn = true;
                while (carryOn){
                    System.out.println("Do you want another card?");
                    String yesOrNo2 = object.next().toLowerCase();
                    if (yesOrNo2.contains("ye")){
                        int playerCard3 = rand.nextInt(10) + 1;
                        playerHand.add(playerCard3);
                        playerSum = 0;
                        for (int i : playerHand) {
                            playerSum += i;
                        }
                        System.out.println("Your cards are:");
                        for (int i : playerHand) {
                            System.out.println(i);
                        };
                        if (playerSum > 21){
                            System.out.println("You're bust!");
                            carryOn = false;
                        }
                    }
                    else {
                        carryOn = false;

                    }
                }



                System.out.println("Your score is " + playerSum);




                int number1 = object.nextInt();
                int number2 = object.nextInt();
                int diff1 = 21 - number1;
                int diff2 = 21 - number2;
                if (number1 > 21 && number2 > 21)
                    System.out.println("You are #losers!");
                else if (number1 == number2 && number1 < 22)
                    System.out.println("Tie!");
                else if (diff1 < diff2)
                    System.out.println("Player one is the winner!");
                else
                    System.out.println("Player two is the winner!");
            }
        }
        else
            System.out.println("Fuck off then");

    }
}
