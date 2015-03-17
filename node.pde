class Node {
  
  String label; 
  float x = 0;
  float y = 0;
  float z = 0;
  float r = 30;
  
  Node(String _label, float _x, float _y, float _z) {
    
    label = _label;
    x = -5.5+_x*46.9+_y*16.6;
    y = 1517-_y*16.9-_z*78.3;
    if (label.equals("222")) r=47500;
    
  }
  
  void draw() {
     
    // Draw circle
  
    fill(255, 204, 0, 100);
    noStroke();
    if (label.equals("222")) {
      fill (255, 0, 0, 100);
      ellipse(x, y, 30, 30);
      tint(155, 0, 0, 100-r/47500*100);
      image(background, 0, 0);
      println(100-r/47500*100);
//      println(r);
    } else     
    ellipse(x, y, r, r);    
    
    
    //Draw node id
    textSize(12);
    fill(0,0,0,250);
    textAlign(CENTER,CENTER);
    text(label,x,y);
    
  }
  
  void setR(float _r){    
    r = _r;
   
  }

}
    
    
    
