public class Rules {
 private int x,y, h, w;
 private String [] ruleOrder = new String[7];
 private String goal,bidding, values, order, playingOptions, payOut, BlackJack;
  public Rules(){
    goal = "The goal of the game is to beat the dealer. Cards will be dealt out and you want to get to 21 without going over";
    bidding = "You start out with $1,000. You can bid as much as you want per hand";
    values = "When playing Blackjack the numeral cards 2 to 10 have their face values, Jacks, Queens and Kings are valued at 10, and Aces can have a value of either 1 or 11. The Ace is always valued at 11 unless that would result in the hand going over 21, in which case it is valued as 1.";
    order = "You go first and the dealer goes last";
    playingOptions = "If you want another card, select Hit. If you believe that you are as close to 21 as possible without busting then you select Stand. If you go over 21, it's a bust.";
    payOut = "If you beat the dealer, you get whatever you bid doubled. You win when you get a number closer to 21 than the dealer without going over.";
    BlackJack = "A Blackjack is a comibination of both an ace and a face card. If you have a Blackjack, you automatically win the round.";
    ruleOrder[0] = goal;
    ruleOrder[1] = order;
    ruleOrder[2] = values;
    ruleOrder[3] = bidding;
    ruleOrder[4] = playingOptions;
    ruleOrder[5] = payOut;
    ruleOrder[6] = BlackJack;
}
  
  public void show (){
    String s = "";
    for(int i =0; i < ruleOrder.length; i++){
     s+= ruleOrder[i] +" "; 
    }
    System.out.print(s);
    
  }
  
  
  public void winner (){
    Player p = new Player();
    Card c = new Card();
    Dealer d = new Dealer();
   if(c.totalPlayer() < d.totalDealer()){
     System.out.println("The dealer wins! You lose!");
   } else {
     System.out.println("You win!");
     p.winBid();
  }
  
  }
}
