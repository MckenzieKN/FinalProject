Card c;
Button b;
Player p;
Rules r;
Table t;
Dealer d;

void setup(){
  size(600,400);
  c = new Card();
  b = new Button();
  p = new Player();
  r = new Rules();
  t = new Table();
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
  p.totalPlayer();
  d.showFirst();
  
}

void draw(){
  b.update(10,10,10,10, "");
  if(mouseX > 215 && mouseY > 240 && mouseX < (215+150) && mouseY < (240+10)&& mousePressed){
    for(int i =0; i < 1; i++)
     b.hitClick();
  } 
}
