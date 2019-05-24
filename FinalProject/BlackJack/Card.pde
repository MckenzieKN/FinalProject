import java.util.Scanner;
public class Card {
 private ArrayList<Integer> cards = new ArrayList<Integer>();
 
  //makes the deck of 52 cards
  public Card (){
    Scanner y = new Scanner(System.in);
    int count = 0;
    int ace;
    int x = 1;
    while(count <= 52){
      if(x>13){
       x = 1; 
      } else if(x ==1){
        System.out.println("The ace can be either a 1 or an 11. What is it's value? Input below");
        ace =y.nextInt();
        while(ace != 11 || ace!= 1){
         System.out.println("The ace has to be a 1 or an 11. Pick one.");
         ace = y.nextInt();
        }
      }
      if(x>10){
       cards.add(10); 
      }else {
        cards.add(x);
      }
      x++;
    }
  }
  
  public void shuffle(){
   ArrayList<Integer> shuf = new ArrayList<Integer>();
   for(int i = 0; i < cards.size(); i++){
     int x = (int)(Math.random()*52);
     shuf.add(cards.remove(x));
     i--;
   }
   cards = shuf;
  }
  
  
 
 
  
}
