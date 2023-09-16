void setup(){
  size (400,400);
  background (115, 121, 3);
}

void draw(){
  scale (2);
  boolean shift = true;
  for (int y=-30; y<400; y+=25)
  {
    for(int x=-30; x<400; x+=30)
    {
      if (shift == true)
       pineapple(x,y);
      else
       pineapple(x+15,y);
    }
     if (shift == true)
     shift = false;
     else
     shift = true;
}}

void pineapple(int x, int y) {
  //colors
    //top gradient
  int diam = 0;
  float a = 0;
  float b = 0;
  float c = 0;
  stroke(0,0,0);
  noFill();
  while (diam < 30){
    stroke(223+a, 164+b, 66+c);
    ellipse(30+x,30+y, diam-6, diam);
    diam ++;
    a-=107/30.0;
    b-=43/30.0;
    c-=63/30.0;
    //115, 121, 3
  }
  
    //star gradient
  float a2 = 0;
  float b2 = 0;
  int diam2= 0;
    while (diam2 < 30){
    stroke(225+a2, 142+b2, 3);
    arc(30+x,30+y, diam2, diam2+6,PI/16,PI-PI/16);
    diam2 ++;
    a2-=110/30.0;
    b2-=21/30.0;
    //115, 121, 3
    }
    
    //small star
  float a3 = 0;
  float b3 = 0;
  float c3 = 0;
  int diam3= 0;
    while (diam3 < 30){
    stroke(255+a3, 255+b3, 255+c3);
    arc(30+x,28+y, diam3-8, diam3-10,PI/8,PI-PI/8);
    diam3 ++;
    a3-=70/30.0;
    b3-=120/30.0;
    c3-=252/30.0;
    }
  
    //white triangle
  noStroke();
  fill (230, 211, 207);
  triangle (27+x,30+y,30+x,20+y,33+x,30+y);
  
  strokeWeight(1);
  strokeJoin(ROUND);
  stroke (52, 70, 4);
  noFill();
  curve (50+x,40+y,18+x,31+y,30+x,15+y,40+x,30+y);
  curve (0+x,40+y,42+x,31+y,30+x,15+y,20+x,30+y);
  //spikes
    //side
  stroke (52, 70, 4);
  curve (-20+x,70+y,10+x,30+y,20+x,50+y,-10+x,70+y);
  curve (80+x,70+y,50+x,30+y,40+x,50+y,70+x,70+y);
    //bottom
  curve (20+x,100+y,20+x,50+y,40+x,50+y,40+x,100+y);
  stroke (223, 164, 66);
     //tops
  stroke (#685a05);
  curve (-30+x,0+y,13+x,29.8+y,30+x,20+y,20+x,-30+y);
  curve (80+x,0+y,47+x,29.8+y,30+x,20+y,40+x,-30+y);
}





