public class Dealer {
  ArrayList <Integer> dealerCards = new ArrayList<Integer>();
  
  
  public Dealer(){
   Card x = new Card();
   dealerCards.add(x.getCards());
   dealerCards.add(x.getCards());
   
  }
  
  public ArrayList<Integer> dealerHand(){
   System.out.println("Dealer's hand is: "+ dealerCards);
   
   return dealerCards; 
  }
  
}
