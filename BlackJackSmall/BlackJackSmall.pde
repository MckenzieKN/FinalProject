Card c;
Button b;
Player p;
Rules r;
Dealer d;
Table t;

void setup(){
  size(600,400);
  c = new Card();
  b = new Button();
  p = new Player();
  t = new Table();
  r = new Rules();
  d = new Dealer();
  t.tab();
  fill(255);
  stroke(0);
  smooth();
  fill(255);
  rect(215,240,140,150,10);
  rect(215,20,140,150,10);
  r.show();
  p.playersHand();
  p.showPlayer();
  d.showFirst();
}

void draw(){
  b.update(10,10,10,10, "");
  int k = 0;
  if(mouseX > 90 && mouseY > 140 && mouseX < (140+80) && mouseY < (140+75)&& mousePressed){
  for(int i =0; i < 1; i++){
   b.hitClick();
   p.addOne();
  }
  } else if(mouseX > 390 && mouseY > 140 && mouseX < (390+80) && mouseY < (140+75)&& mousePressed){
     for(int i =0; i < 1; i++){
     b.stand();
     r.winner();
     }
  }
  
}
