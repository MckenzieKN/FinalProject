public class Table {
  PImage [] table = new PImage[1];
  public Table(){
    table [0] = loadImage("finalTable.jpg");
  }
  
  public void tab(){
    image(table[frameCount%1], 0,0, 600, 450);
  }
}
