
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
    System.out.println("The ace can either be a 1 or an 11. Pick one and type it below");
  return 0;
}
  
  public int randCard (){
    int x = (int)(Math.random()* cards.size());
    return cards.get(x);
  }
  
  public void getCards(){
    int x = randCard();
    int y = randCard();
    text("Your card values are "+ x+" and "+ y, 100,100);
  }
  
 
 
  
}
