import java.util.Scanner;
public class Card {
 private ArrayList<Integer> cards = new ArrayList<Integer>();
 
  //makes the deck of 52 cards
  public Card (){
    int count = 0;
    int x = 1;
    while(count <= 52){
      if(x>13){
       x = 1; 
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
  
  public int getAce(){
    System.out.println("");
    Scanner scan = new Scanner(System.in);
    System.out.println("The ace can either be a 1 or an 11. Pick one and type it below");
    return scan.nextInt(); 
  }
  
  public int rand (){
    int x = (int)(Math.random()* cards.size());
    return 0;
  }
  
  public void getCards(){
    Card first;
  }
  
 
 
  
}
