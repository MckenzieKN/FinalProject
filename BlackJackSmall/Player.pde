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
    totalPlayer(playerCards);
    System.out.println("The player's cards are: "+ playerCards);
   } else {
    System.out.println("The player's new cards are "+ playerCards);
   }
    return playerCards;
  }
  
  public void addOne(){
    cc++;
    fill(255);
   textSize(20);
   text("Your cards: ", 225,270);
   text(" "+ playerCards, 230,300);
   if(cc < 2){
   playerCards.add(c.getCards());
    showPlayer();
   }
  }
  
  public void addTwo (){
   cc++;
   fill(255);
   textSize(20);
   text("Your cards: ", 225,270);
   text(" "+ playerCards, 230,300);
    if(cc ==2){
      playerCards.add(c.getCards());
    }
    if(playerCards.size() >2){
     showPlayer();
    }
  }
  
  public ArrayList<Integer> showPlayer (){
   fill(0);
   textSize(20);
   text("Your cards: ", 225,270);
   text(" "+ playerCards, 230,300);
   totalPlayer(playerCards);
   return playerCards;
  }
  
  
  public int totalPlayer (ArrayList<Integer> p){
    int sum =0;
    for(int i = 0; i < p.size(); i++){
      sum += p.get(i);
    }
    
    textSize(20);
    fill(0);
    text("Total: "+sum, 240, 350);
   return sum; 
  }
  
  public ArrayList<Integer> getHand(){
   return playerCards; 
  }
  
}
