public class Button {
 private int x,y, h, w;
 private String label;
 private boolean over = false;
 private boolean down = false;
 private boolean fullDown = false;
 
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
 // it pulls up the grey box for the rules
  public void check (){
    colors("Start");
   if(down){
    fullDown = true;
   }
   if(fullDown){
    rules(); 
   }
  }
  
  //method pulls up the grey box and makes the end button to restart the game
  public void rules (){
    smooth();
    fill(220);
    stroke(0);
    rect(140,60,275,300,10);
    smooth();
    fill(255);
    rect(x,y,w,h,10);
    colors("End");
    text("Rules", 140+(275/2)-(textWidth("Rules")/2), 70+(50/2)); 
    
    
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
  

}
