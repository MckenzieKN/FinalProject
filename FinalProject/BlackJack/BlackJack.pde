Table t;
Button b;
Rules r;
Card c;
Dealer d;
Player p;
int n = 0;
void setup () {

 size(600,400); 
 t = new Table ();
 b = new Button (10 ,10, 40,100, "Start");
 r = new Rules();
 c = new Card();
 d = new Dealer();
 p = new Player();
 r.show();
 System.out.println("");
 c.playersHand();
 d.dealerHand();
}

void draw(){
  t.tab();
  b.update();
  b.cardBox();
  b.hit();
  b.stand();
  b.hitStand();
  b.checkStand();
  c.totalPlayer();
  if(mouseX > 100 && mouseY > 160 && mouseX < (100+50) && mouseY < (160+90) &&mousePressed){
    for(int i = 0; i<1; i++)
        c.addOne();  
    c.reSetCC();
}
  n=0;
  c.showPlayer();
  p.zero();
  c.totalPlayer();
  b.roundSetUp();
  b.hitStand();
  b.checkStand();
    
  }
