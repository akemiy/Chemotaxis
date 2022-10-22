 //declare bacteria variables here   
 Bacteria[] colony;
 void setup()   
 {     
 //initialize bacteria variables here   
 size(400, 400);
 colony = new Bacteria[8];
 for (int i=0; i<colony.length; i++)
   colony[i] = new Bacteria();
 }   
 void draw()   
 {    
 //move and show the bacteria   
 background(255);
 for (int i=0; i<colony.length; i++){
   colony[i].move();
   colony[i].show();
 }
 }  
 class Bacteria    
 {     
 //lots of java!   
 int x, y;
 Bacteria (){
   x = (int)(Math.random()*400);
   y = (int)(Math.random()*400);
 }
 void move(){
   if (x > 200){
     x += (int)(Math.random()*5)-3; // {-3, -2, -1, 0, 1}
   } else {
     x += (int)(Math.random()*5)-1; // {-1, 0, 1, 2, 3}
   }
   if (y > 200){
     y += (int)(Math.random()*5)-3; // {-3, -2, -1, 0, 1}
   } else {
     y += (int)(Math.random()*5)-1; // {-1, 0, 1, 2, 3}
   }
 }
 void show(){
   fill(0);
   ellipse(x, y, 30, 30);
 }
 }
