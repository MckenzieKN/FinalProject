Table t;
Button b;
Rules r;
Card c;
Dealer d;

void setup () {
 size(600,400); 
 t = new Table ();
 b = new Button (10 ,10, 40,100, "Start");
 r = new Rules();
 c = new Card();
 d = new Dealer();
 r.show();
 System.out.println("");
 c.playersHand();
 d.dealerHand();
 
 
}

void draw(){
  t.tab();
  b.update();
  b.cardBoxes(175,240,100,150);
  b.cardBoxes(300,240,100,150);
  b.hit();
  b.stand();
  int count = 0;
  if(mouseX > 100 && mouseY > 160 && mouseX < (100+50) && mouseY < (160+90) &&mousePressed){
    count++;
    for(int i = 0; i<1; i++){
     c.addOne(); 
    }
  }
  
}
