
public class Card {
 private ArrayList<Integer> cards = new ArrayList<Integer>();
 private ArrayList<Integer> playerCards = new ArrayList<Integer>();
 private int cc = 0;
 private int ccc = 0;
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
  
  public int getAce(){
    System.out.println("");
    System.out.println("The ace can either be a 1 or an 11. Pick one and type it below");
  return 0;
}
  
  public int randCard (){
    int x = (int)(Math.random()* cards.size());
    return cards.get(x);
  }
  
  public int getCards(){
    return randCard();
  }
  
  public ArrayList<Integer> playersHand(){
   if(playerCards.size() < 2){
    playerCards.add(getCards());
    playerCards.add(getCards());
    System.out.println(playerCards); 
    System.out.println("The player's cards are: "+ playerCards);
   } else {
    addOne();
    System.out.println("The player's new cards are "+ playerCards);
   }
    return playerCards;
  }
  
  public void addOne(){
   cc++;
   if(cc < 2){
     playerCards.add(getCards());
  }
  showPlayer();
  }
  
  public void addTwo(){
    cc++;
    if(cc<3){
      playerCards.add(getCards());
    }
    showPlayer();
  }

  
  public ArrayList<Integer> showPlayer (){
   fill(0);
   textSize(25);
   text("Your Cards: ", 214,250);
   text(" "+ playerCards, 227,290);
   return playerCards; 
  }
  
  public int totalPlayer (){
    int sum = 0;
    for(int i = 0; i < playerCards.size(); i++){
      sum += playerCards.get(i);
    }
    textSize(20);
    fill(0);
    text("Total: "+ sum, 240, 350);
   return sum; 
  }
  
  public boolean isOver (){
    if(totalPlayer() >21){
      return true;
    }
   return false; 
  }
  
 public void nextRound(){
   ArrayList <Integer> done = new ArrayList <Integer>();
  playerCards = done;
  playersHand();
 }

 
  
}
