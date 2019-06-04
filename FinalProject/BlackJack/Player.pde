import java.util.Scanner;
public class Player {
 private int money;
 private int bet;
 
 public Player (){
  money = 1000;
 }
 
 public void setMoney(){
   
 }
  
 public int getMoney(){
  return money; 
 }
 
 public int firstBet(){
   money-=50;
  return money; 
 }
 
 public void zero(){
  if(money == 0){
    textSize(50);
    fill(255);
    text("GAME OVER", 100,100); 
    System.out.println("GAME OVER");
  }
 }

 public int winBid(){
   money+=100;
   return money;
 }
 
 public void playerHand(){
   
 }
 
 
}
