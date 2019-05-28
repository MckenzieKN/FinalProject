import java.util.Scanner;
public class Player {
 private int money;
 private int bet;
 
 public Player (){
  money = 1000;
 }
  
 public int getMoney(){
  return money; 
 }
 
 public void setBet (){
   Scanner scan = new Scanner(System.in);
   System.out.println("Type the amount you want to bet below");
   bet = scan.nextInt();
   while(money < bet){
    System.out.println("You don't have enough money to bid this much. Type a new value below"); 
    bet = scan.nextInt();
   }
   
 }
 
 public void setMoney(int bet){
   money-= bet;
 }
 
 public void winRound(){
   
 }
 
 public int getBet(){
   return bet;
 }
 
 public void winBid(){
   
 }
 
 public void playerHand(){
   
 }
 
 
}
