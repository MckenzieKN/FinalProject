public class Dealer {
  ArrayList <Integer> dealerCards = new ArrayList<Integer>();
  
  
  public Dealer(){
   Card x = new Card();
   dealerCards.add(x.getCards());
   dealerCards.add(x.getCards());
   
  }
  
  public void showFirst(){
    fill(0);
    textSize(19);
    text("Dealer", 220,40);
    text("First Card: "+ dealerCards.get(0), 220,70);
  }
  
  public ArrayList<Integer> dealerHand(){
   System.out.println("Dealer's hand is: "+ dealerCards);
   return dealerCards; 
  }
  
  public int totalDealer(){
    int sum = 0;
    for(int i = 0; i < dealerCards.size(); i++){
     sum+= dealerCards.get(i); 
    }
    return sum;
  }
  
  
  
}
