public class Player{
  private ArrayList<Integer> playerCards = new ArrayList<Integer>();
  Card c = new Card();
  private int cc = 0;
  
  public Player () {
    
  }
  
  //sets up the player's hand and adds a card every time the button "hit" is clicked
  public ArrayList<Integer> playersHand(){
    System.out.println("");
   if(playerCards.size() < 2){
    playerCards.add(c.getCards());
    playerCards.add(c.getCards());
    System.out.println("The player's cards are: "+ playerCards);
   } else {
    System.out.println("The player's new cards are "+ playerCards);
   }
    return playerCards;
  }
  
  public void addOne(){
    cc++;
    if(cc < 2){
      playerCards.add(c.getCards());
    }
   showPlayer();
  }
  
  public ArrayList<Integer> showPlayer (){
   fill(0);
   textSize(23);
   text("Your Cards: ", 216,265);
   text(" "+ playerCards, 237,300);
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
}
