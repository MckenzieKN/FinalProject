public class Dealer {
  private ArrayList <Integer> dealerCards = new ArrayList<Integer>();
  Card x = new Card();
  private int ss = 0;
 
  public Dealer(){
   if(ss <1){
   dealerCards.add(x.getCards());
   dealerCards.add(x.getCards());
   }
   ss++;
   
  }
 
  public void showFirst(){
  fill(0);
  textSize(20);
  text("Dealer", 250,50);
  }
  
  
 private int nn = 0;
  public void hitting(){
    if(nn ==0){
     nn++;
     Player p = new Player();
     if((totalDealer() < 17 || p.totaling() >= totalDealer())&& p.totaling() < 21){
        fill(255);
        textSize(20);
        text("" + dealerCards,220,100);
        dealerCards.add(x.getCards());
        fill(0);
        text("" + dealerCards,220,100);
     }else{
       System.out.println("The dealer stands");
     }
    }
  }
 
 
  public ArrayList<Integer> dealerHand(){
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
