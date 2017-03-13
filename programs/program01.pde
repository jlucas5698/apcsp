//
int moveit=75;  // adds or subtracts 75
int number=10;
 
void setup() {
  size(1000, 1000);
  frameRate(1);  // warning-slow the frame-rate down if fast-changing colors make you feel sick.
  noStroke();  // makes sure there are no visible black lines
}
 
color pick() {
  return color(random(255), random(255), random(255));  // pick=random color
}
 
void draw () {
  background (pick());  // make background random color
  moveit=moveit-number; // this variable makes things move
  if(moveit<-250) {
    number=-10;
  }
  if(moveit>50) {
    number=10;
  }
  invisisquare(200+moveit, 200+moveit, 80, 80, pick());  // create 1st invisisquare
  invisisquare(300+moveit, 300+moveit, 100, 80, pick());  // create 2nd invisisquare
  invisisquare(20-moveit, 10-moveit, 120, 90, pick());  // create 3rd invisisquare
  }
 
void invisisquare(int myx,int myy, int xp, int yp, color mycolor) {
  rect(myx, myy, 100+xp, 80+yp, pick());  // white rectangle
  ellipse(10+myx, 20+myy, 200+xp, 100+yp);  // white oval within the white rectangle
  triangles(myx+moveit, myy+moveit, 100-moveit, 150-moveit, xp+moveit, yp+moveit, pick());  // white triangles within the white rectangle
  }
 
void triangles(int myx, int myy, int xt, int yt, int xp, int yp, color mycolor) {
  triangle (10+myx, 20+myy, 20+xt, 100+yt, 90+xp, 80+yp);  // create 1st white triangle
  triangle(30+myx, 40+myy, 100+xt, 150+yt, 160+xp, 17+yp);  // create 2nd white triangle
  triangle(40+myx, 50+myy, 80+xt, 90+yt, 100+xp, 30+yp);  // create 3rd white triangle
  triangle(myx, myy, xt, yt, xp, yp);  // create 4th white triangle
}
