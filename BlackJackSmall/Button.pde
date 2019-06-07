public class Button {
 private int x,y, h, w;
 private String label;
 private boolean over = false;
 private boolean down = false;
 private boolean fullDown = false;
 private int ll = 0;
 
  public Button(){
    
  }
 
 
  public void hitClick(){
   Player p = new Player();
   p.addOne();
  }
 
 
 public void update(int x, int y, int h, int w, String l){
  this.x = x;
  this.y = y;
  this.h = h;
  this.w = w;
  label = l;
  smooth();
  fill(255);
  stroke(0);
  rect(x, y, w, h, 10);
  fill(0);
  textSize(24);
  text(label, x+(w/2)-(textWidth(label)/2), y+(h/2));
  if(mouseX > x && mouseY > y && mouseX < (x+w) && mouseY < (y+h)){
   over = true;
  } else {
  over = false;
  }
  if(!over){
  fill(250,218,94);
  } else{
   fill(250, 218, 50);
  }
  stroke(0);
  rect(x,y, w,h, 10);
  check();
  }
 
 
  public void check (){
   colors("Hit", 90,140,80,75);
   colors("Stand", 390,140,80,75);
   if(down){
  fullDown = true;
    
   }
   if(fullDown){
   
   }
  }
 
  public void stand(){
  Dealer d = new Dealer();
  if(ll == 0){
   ll++;
   fill(0);
   textSize(20);
   text(""+ d.dealerHand(), 220, 100); 
   d.hitting();
  }
  
  if(r.isOver()){
   textSize(20);
   fill(255);
   text("GAME OVER: DEALER WINS", 130,240);
   } else if(r.isOverD()){
   textSize(20);
   fill(255);
   text("GAME OVER: YOU WIN", 130,240);
   } else {
   r.winner();
   }
  }
 
 
 
 
  // gets the color change in the buttons when clicked on
  public void colors (String l, int x, int y, int w, int h){
   this.x = x;
   this.y = y;
   this.h = h;
   this.w = w;
  label = l;
   smooth();
  fill(255);
  stroke(0);
  rect(x, y, w, h, 10);
  fill(0);
  textSize(24);
  text(l, x+(w/2)-(textWidth(l)/2), y+(h/2));
  if(mouseX > x && mouseY > y && mouseX < (x+w) && mouseY < (y+h)){
   over = true;
  } else {
  over = false;
  }
  if(!over){
  fill(250,218,94);
  } else{
   fill(250, 218, 50);
  }
  stroke(0);
  rect(x,y, w,h, 10);
  if(mouseX>x && mouseY>y && mouseX<x+w && mouseY<y+h){
    over=true;
    if(mousePressed){
      down=true;
    }else{
      down=false;
    }
  }else{
    over=false;
  }
 
  if(!over){
    fill(255);
  }else{
    if(!down){
      fill(100);
    }else{
      fill(0);
      
    }
  }
  stroke(0);
  rect(x, y, w, h, 10);
  if(down){
    fill(255);
  }else{    
    fill(0);
    
  }
  textSize(24);
  text(l, x+w/2-(textWidth(l)/2), y+h/2+(textAscent()/2));
}
}
