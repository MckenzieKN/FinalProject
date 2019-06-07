# FinalProject

# Project Title and purpose

The project I am making is BlackJack.
The purpose is to be able to play a round of blackjack with
All the rules in play.

### Difficulties or opportunities you encountered along the way.

The toughest part was trying to get the card values or numbers to
Show up as well as comparing the dealers hand and the players hand
To see who won.

### Most interesting piece of your code and explanation for what it does.

```Java
public ArrayList<Integer> playersHand(){
    System.out.println("");
   if(playerCards.size() < 2){
    playerCards.add(c.getCards());
    playerCards.add(c.getCards());
    System.out.println("CARDS: "+playerCards + "TOTAL: "+ totalPlayer(playerCards));
    tot = totalPlayer(playerCards);
    fill(0);
    textSize(20);
    text("Total: "+tot, 240, 350);
    System.out.println("The player's cards are: "+ playerCards);
   } else {
    System.out.println("The player's new cards are "+ playerCards);



```
This piece of code sets up the players hand and shows it in the right spot every round
## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

Kate McKenzie

## Acknowledgments

Inspiration came from my grandpa who taught me how to play.
