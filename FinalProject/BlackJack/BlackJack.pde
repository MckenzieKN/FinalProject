Table t;
Button b;
Rules r;
Card c;

void setup () {
 size(600,400); 
 t = new Table ();
 b = new Button (10 ,10, 40,100, "Start");
 r = new Rules();
 c = new Card();
 r.show();
}

void draw(){
  t.tab();
  b.update();
  b.cardBoxes(175,240,100,150);
  b.cardBoxes(300,240,100,150);
  b.hit();
  b.stand();



}
