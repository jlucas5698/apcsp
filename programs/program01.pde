//Snow Angel Demo

void setup(){
   size(500,500);
   background(0,0,255);
   stroke(0,0,255);
}

void draw(){
 line(150, 150, mouseX, mouseY);
 if(mousePressed){
   stroke(255);
 }
}