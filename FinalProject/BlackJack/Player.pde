public class Player {
 private String name;
 private int bid;
 
 public Player (String n){
  name = n;
  bid = 1000;
 }
 
 public String getName(){
  return name; 
 }
  
 public int getBid(){
  return bid; 
 }
 
 public void setBid(int b){
   bid-= b;
 }
 
 public int getBet(){
   return bid;
 }
 
 public void winBid(){
   
 }
 
 
}
