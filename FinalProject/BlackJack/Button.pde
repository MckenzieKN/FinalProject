import java.util.Scanner;
public class Button {
 private int x,y, h, w;
 private String label;
 private boolean over = false;
 private boolean down = false;
 private boolean fullDown = false;
 
 public Button (){
   
 }
 
  public Button (int x, int y, int h, int w, String l){
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    label = l;
  }
  
  
  public void update(){
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
  
 // method makes the start button and when it's clicked
 // Welcomes the new player
  public void check (){
    
    colors("Start");
   if(down){
    fullDown = true;
    
   }
   if(fullDown){
    end();
   }
  }
  
  //method pulls up the grey box and makes the end button to restart the game
  public void end (){
    colors("End");
    
}

  public void cardBox(){
    fill(255);
    stroke(0);
    smooth();
   rect(210,200,150,175,10);
 }




// gets the color change in the buttons when clicked on

  public void colors (String l){
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
  
  public void hit (){
   smooth();
   fill(120);
   stroke(0);
   rect(100,160,90,60,10);
   textSize(30);
   fill(0);
   text("Hit", 123,200);
  }
  
  public void stand(){
   smooth();
   fill(120);
   stroke(0);
   rect(375,160,90,60,10);
   textSize(28);
   fill(0);
   text("Stand", 380,200);
  }
  
  public void hitClick(){
   Card c = new Card();
   c.addOne();
  }
  
  public boolean mouseOverHit(){
   if(mouseX > 100 && mouseY > 160 && mouseX < (100+60) && mouseY < (160+90)){
    return true;
  } 
  return false;
  }
  
  

}
