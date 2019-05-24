Table t;
Button b;
Rules r;

void setup () {
 size(600,400); 
 t = new Table ();
 b = new Button (10 ,10, 40,100, "Start");
 r = new Rules();
 r.show();
}

void draw(){
  t.tab();
  b.update();

}
