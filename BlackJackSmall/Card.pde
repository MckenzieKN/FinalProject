import java.util.Scanner;
public class Card {
  private ArrayList<Integer> cards = new ArrayList<Integer>();
  public Card (){
    int count = 0;
    int x = 1;
    while(count <= 52){
      if(x>13){
       x = 1; 
      } 
      if(x ==1){
        cards.add(11);
      }else if(x>10){
       cards.add(10); 
      }else {
        cards.add(x);
      }
      x++;
      count++;
    }
  }
  
   public int getAce(){
     Scanner scan = new Scanner(System.in);
     System.out.println("");
     System.out.println("The ace can either be a 1 or an 11. Pick one and type it below");
     int ace = scan.nextInt();
     return ace;
  }
  
  public int randCard (){
    int x = (int)(Math.random()* cards.size());
    return cards.get(x);
  }
  
  public int getCards(){
    return randCard();
  }
  
  
  
}
