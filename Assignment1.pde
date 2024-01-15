int carX=0;
int carSpeed=2;
Snow[] s=new Snow[30];

void setup(){
  size(300,300);
  smooth();
  noStroke();
  for(int i=0; i<s.length; i++){
    s[i] = new Snow();
  }
}

void draw(){
  sun();
  building1();
  building2();
  building3();
  building4();
  season();
  movingCar();
  bridge();
  ground();
  for(int i=0; i<s.length; i++){
    s[i].show();
    s[i].fall();
  }
}

//Building 1
void building1(){
  int x=0;
  int y=145;
  fill(0);
  rectMode(CORNER);
  rect(0,140,40,100);
  for (int i=0; i<40; i++){
    fill(255);
    rectMode(CORNER);
    rect(x,y,5,5);
    x+=10;
    if (x>=40){
      y+=10;
      x=0;
    }
  }
}

//Building 2
void building2(){
  int x=57;
  int y=107;
  fill(0);
  rectMode(CORNER);
  rect(50,100,50,150);
  for (int i=0; i<36; i++){
    fill(255);
    rectMode(CORNER);
    rect(x,y,5,5);
    x+=15;
    if (x>=100){
      y+=12;
      x=57;
    }
  }
}

//Building 3
void building3(){
  int y=160;
  fill(0);
  rectMode(CORNER);
  rect(260,150,50,150);
  for (int i=0; i<10; i++){
    fill(255);
    rectMode(CORNER);
    rect(270,y,40,5);
    y+=12;
  }
}

//Building 4
void building4(){
  int x=0;
  int x2=202;
  int y=155;
  fill(0);
  rectMode(CORNER);
  rect(200,150,50,150);
  rect(205,110,40,50);
  rect(210,70,30,50);
  rect(220,30,5,50);
  rect(227,50,5,50);
  for (int i=0; i<3; i++){
    fill(255);
    rectMode(CORNER);
    rect(x+212,75,5,30);
    x+=10;
  }
  x=0;
  for (int i=0; i<4; i++){
    fill(255);
    rectMode(CORNER);
    rect(x+207,115,5,30);
    x+=10;
  }
  for (int i=0; i<15; i++){
    fill(255);
    rectMode(CORNER);
    rect(x2,y,5,30);
    x2+=10;
    if (x2>=250){
      y+=35;
      x2=202;
    }
  }
}

//Bridge
void bridge(){
  int x=0;
  fill(0);
  rectMode(CORNER);
  rect(0,210,300,10);
  rect(0,200,300,5);
  for (int i=0; i<=20; i++){
    rect(x,200,5,10);
    x+=20;
  }
  rectMode(CENTER);
  rect(150,240,20,40);
}

//Ground
void ground(){
  fill(87,157,166);
  rectMode(CORNER);
  rect(0,240,300,300);
  fill(0);
  rect(0,240,70,300);
  rect(230,240,100,300);
  ellipseMode(CENTER);
  ellipse(150,245,40,15);
  ellipse(10,250,120,50);
  ellipse(290,250,120,50);
  ellipse(10,240,60,50);
  ellipse(290,240,60,50);
}

//Moving Car
void movingCar(){
  car();
  carX+=carSpeed;
  if (carX >= 400){
    carX=-50;
  }
}

void car(){
  fill(0);
  rectMode(CORNER);
  rect(carX+8,190,20,18);
  rect(carX,196,40,12);
  ellipse(carX+10,205,10,10);
  ellipse(carX+30,205,10,10);
  fill(#FAFF00);
  rect(carX+35,198,5,5);
  fill(#FF0000);
  rect(carX,198,4,5);
}

//Sun
void sun(){
  fill(255);
  ellipseMode(CENTER);
  ellipse(mouseX+200,40,50,50);
  ellipse(mouseX-200,40,50,50);
  fill(255,60);
  ellipse(mouseX+200,40,60,60);
  fill(255,40);
  ellipse(mouseX+200,40,70,70);
}

//Season
void season(){
  if (mouseX==0 || mouseX<100){
    fill(216,128,20,150);
    rect(0,0,300,300);
  }
  else if (mouseX==100 || mouseX<200){
    fill(162,84,180);
    ellipse(mouseX-180,40,50,50);
    fill(162,84,180,150);
    rect(0,0,300,300);
  }
  else if (mouseX>=200 || mouseX==300){
    fill(30,27,139);
    ellipse(mouseX-180,40,50,50);
    fill(30,27,139,150);
    rect(0,0,300,300);
  }
}

//Snow
class Snow{
  float size = random(1,5);
  float x = random(0,300);
  float y = random(0,300);
  float yspeed = 1;
  
  void fall(){
    y+=yspeed;
    if (y>=300){
      y=-10;
    }
  }
  
  void show(){
    fill(255);
    ellipse(x,y,size,size);
  }
}
