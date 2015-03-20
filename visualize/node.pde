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
      fill(255, 0, 0, 100);
      ellipse(x, y, 30, 30);
      tint(155, 0, 0, 100-r/500);
      image(background, 0, 0);
//      println(100-r/50000*100);
      
      fill(255);
      noStroke();
      rect(width-150, height-350, 130, 100, 10);
      rect(width-150, height-230, 130, 100, 10);
      rect(width-150, height-110, 130, 100, 10);
      fill(50);
      textSize(14);
      text("Average listening DC", width-140, height-350, 115, 60);
      text("Model prediction DC", width-140, height-230, 115, 60);
      text("Interference level", width-140, height-110, 115, 60);
      
      textSize(21);      
      text(average_listening.getFloat(19-int(r/2500), 0)+"%", width-85, height-280); 
      text(model.getFloat(19-int(r/2500), 1)+"%", width-85, height-160); 
      text(100-r/500+"%", width-85, height-40);
      
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
    
    
    
