Table t;
Button b;

void setup () {
 size(600,400); 
 t = new Table ();
 b = new Button (10 ,10, 40,100, "Start");
}

void draw(){
  t.tab();
  b.update();
}
