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
 
 public int firstBet(){
   money-=50;
  return money; 
 }

 public int winBid(){
   money+=100;
   return money;
 }
 
 public void playerHand(){
   
 }
 
 
}
