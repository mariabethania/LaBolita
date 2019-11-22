//int sec1,sec2,min1,min2,hr1,hr2;
int mill,mill1,mill2;
int pauseCount1,millPause1,millPause2,start;
float x, y, z;
float v, a, g;
float xv, xa, xg;
float rad;
float bRad;
//float gyroscopeX, gyroscopeY, gyroscopeZ;
//float yCount = 0;
//float xCount = 0; 
int liveCount = 0;
int plusPoints1,plusPoints2;
int minusPoints,badPoints1,badPoints2,badPoints3;
float bx3, by3,bx4,by4,bx5,by5;
float bx1, by1, bx2, by2;
float bz = 0;
float bz1 = 0;
float bz2 = 0;
float cz1; 
float cz;
boolean go2 = false;
boolean go3 = false;
boolean go4 = false;
boolean go5 = false;
//boolean spin = false;
float red = 255;
int green = 255; 
float blue = 255;
float tRed, tRed1, tRed2;
float trans; 
float cx, cy;
float cx1, cy1;
float tx, tx1, tx2, ty;
float nx, ny, nz;
float px, py, rx, ry;
float base;
float cloudX, cloudY, cloudW, cloudH;
float cloudX1, cloudY1, cloudW1, cloudH1;
float cloudX2, cloudY2, cloudW2, cloudH2;
float xRotate, yRotate, zRotate;
float m = 0;
//float rectX,rectX1,rectY,rectX2,rectX3,moonXl,moonXr,moonXbgL,moonXbgR;
//float bgY;
//float bgStep;
float floorStep;
float rotateSpeed;
float swipe;
int pulse = 0;
boolean boolBall = true;
boolean boolVolley = true;
boolean pulseSwitch = false;
boolean run = true;
boolean died = true;  
boolean scoreBool = false;
boolean graphics = false;
int death = 1;
//float pulseGreen = 100;
//float pulseRed = 255;
//float pulseBlue = 0;
PImage soccerBall;
PImage basketball;
PImage volleyBall;
PImage radiation;
PImage earthBall;
//PImage marsBall;
//PImage bg1,bg2,bg3,bg4,bg5;
boolean marsSwitch = false;
boolean moonSwitch = false;
//PImage moon1,moon2;
//PImage moonBgL,moonBgR;
//PImage mars1,mars2;
//PImage rectImg1,rectImg2,grass1,grass2,bg;
PShape bBall;
PShape sBall;
PShape vBall;
PShape eBall;
PShape mBall;
PShape hazard,hazardIcon;
//String ballTexture = "Ball";
PFont myFont1,myFont2;
float W;
void setup() {

  //fullScreen(P3D,1);
  //size(displayWidth,displayHeight,P3D);
  size(394, 700, P3D);
  //size(540, 960, P3D);
  //size(960, 540, P3D);
  //size(1244,700,P3D);
  //size(200,355,P3D);
  //size(1080,720,P3D);
  
W = width*0.56;
      //if (graphics) {
      //bg = loadImage("backgroundPalmsSmall.png");
      //grass1 = loadImage("grassOnlyL.png");
      //grass2 = loadImage("grassOnlyR.png");
      //rectImg1 = loadImage("skyGrassLarge1.jpg");
      //rectImg2 = loadImage("skyGrassLarge2.jpg");
      //mars1 = loadImage("Mars4kL.jpg");
      //mars2 = loadImage("Mars4kR.jpg");
      //moon1 = loadImage("moonSurfaceL.png");
      //moon2 = loadImage("moonSurfaceR.png");
      //moonBgL = loadImage("earthSpaceL.jpg");
      //moonBgR = loadImage("earthSpaceR.jpg");
      //earthBall = loadImage("earth_daymap.jpg");
      //marsBall = loadImage("mars.jpg");
      //}
      radiation = loadImage("radiation3a.jpg");
      basketball = loadImage("Spalding.jpg");
      soccerBall = loadImage("soccerBall.jpg");
      volleyBall = loadImage("volleyBall.jpg");
  //myFont2 = createFont("Segoe Print",32);
  //textFont(myFont2);

//fill(200,170,0);
  rad = height*0.075;
  bRad = rad*1.4;
  //reset();
  xRotate = 0;
  yRotate = 0;
  zRotate = 0;
 //if (graphics) { 
 // moonXl = 0;
 // moonXr = int(width/0.3078);
 // moonXbgL = 0;
 // moonXbgR = int(width/0.3078);
 // rectX = 0;
 // rectX3 = int(width/0.2052);
 // rectX1 = 0;//width-int(width/0.2052);
 // rectX2 = int(width/0.2052);//width-3840;
 // rectY = 0;
 // bgY = 0;
 //}
  cz = 0;
  cz1 = 0;
//noStroke();
//noFill();
  //bBall = createShape(SPHERE,rad);
  //bBall.setTexture(basketball);
  //sBall = createShape(SPHERE,rad);
  //sBall.setTexture(soccerBall);
  //vBall = createShape(SPHERE,rad);
  //vBall.setTexture(volleyBall);
  //hazard = createShape(SPHERE,bRad*0.5);
  //hazard.setTexture(radiation);
  //hazardIcon = createShape(SPHERE,rad*0.42);
  //hazardIcon.setTexture(radiation);
rectMode(CENTER);

  base = height*0.01857;
  cloudX = random(width, width*1.33);
  cloudY = random(0, height*0.6);
  cloudW = random(width/4, width/2);
  cloudH= random(height/30, height/10);
  cloudX1 = random(width*1.33, width*1.66);
  cloudY1 = random(0, height*0.6);
  cloudW1 = random(width/4, width/2);
  cloudH1 = random(height/30, height/10);
  cloudX2 = random(width*1.66, width*2);
  cloudY2 = random(0, height*0.6);
  cloudW2 = random(width/4, width/2);
  cloudH2 = random(height/30, height/10);

reset();

}

void draw() {
                    // **************** this lines refresh the scrolling background looping images *********
//if (graphics) {
//    if ((!marsSwitch && !moonSwitch) || (marsSwitch && !moonSwitch)) {
//      if (rectX1 <= -((int(width/0.2052)*2)-width)) {
//          rectX1 = width;
//        }
//      if(rectX2 <= -((int(width/0.2052)*2)-width)) {
//          rectX2 = width;
//      } 
//    } else 
//    if (!marsSwitch && moonSwitch) {  
//      if (moonXbgL <= -((int(width/0.3078)*2)-width)) {      
//          moonXbgL = width;
//        }
//      if(moonXbgR <= -((int(width/0.3078)*2)-width)) {
//          moonXbgR = width;
//        }
//    }
     
//      // decides which mode to show depending on user's choice
//    if (!marsSwitch && !moonSwitch) {
//    image(rectImg1,rectX1,rectY);
//    image(rectImg2,rectX2,rectY);
//    image(grass1,rectX,height*0.8);
//    image(grass2,rectX3,height*0.8);
//    rectX1 -= bgStep;
//    rectX2 -= bgStep;
//    image(bg,0,bgY);
//    } else if (marsSwitch && !moonSwitch) {
//    image(mars1,rectX,rectY);
//    image(mars2,rectX3,rectY);
//    }
//    else if (!marsSwitch && moonSwitch) {
//    image(moonBgL,moonXbgL,rectY);
//    image(moonBgR,moonXbgR,rectY);
//    image(moon1,rectX,height*0.75);
//    image(moon2,rectX3,height*0.75);
//    moonXbgL -= bgStep;
//    moonXbgR -= bgStep;
//    }
//} else if (!graphics) {
  noStroke();
    if (!marsSwitch && !moonSwitch) {
      background(0, 190, 200);
      fill(0, 125, 0);
      rect(width*0.5, height*0.99, width*1.5, height*0.2);
    } else if (marsSwitch && !moonSwitch) {
      background(220, 150, 100);
      fill(150, 60, 0);
      rect(width*0.5, height*0.99, width*1.5, height*0.2);
      
    } else if (!marsSwitch && moonSwitch) {
      background(0, 0, 15);
      fill(150);
      rect(width*0.5, height*0.99, width*1.5, height*0.2);
    }
    
//} // this closes bracket of if graphics statement


if (!moonSwitch) {  // shows clouds if not moon mode
clouds();
}

if (died && !scoreBool) { // which touch is active?
  menu();
  } else if (died && scoreBool) {
    score();
  } else if (!died && !scoreBool) {
    game();
  }

if (xRotate >= PI*2) { // resets rotation variables to zero every 360 degrees
  xRotate = 0.0;
  yRotate = 0.0;
  zRotate = 0.0;
}
  xRotate += 0.05;
  yRotate += 0.05;
  zRotate += 0.05;
//println(xv+" - "+xv*rotateSpeed);

} 
// ends draw function

void mousePressed() {
  px = mouseX; 
  py = mouseY;
  
  if (died && !scoreBool) {
    if (mousePressed && mouseX >= width*0.38 && mouseX <= width*0.62 && mouseY >= height*0.75 && mouseY <= height*0.81) {
      if (!marsSwitch && !moonSwitch) {
        marsSwitch = true;
        moonSwitch = false;
        reset();
      } else if (marsSwitch && !moonSwitch) {
        marsSwitch = false;
        moonSwitch = true;
        reset();
      } else if (!marsSwitch && moonSwitch) {
        marsSwitch = false;
        moonSwitch = false;
        reset();
      }
    }

    if (mouseX >= width*0.3 && mouseX <= width*0.7 && mouseY >= height*0.55 && mouseY <= height*0.61){
        if (boolBall == true && boolVolley == true){
          boolBall = false;
          boolVolley = false;
        } else 
        if (boolBall == false && boolVolley == false) {
          boolVolley = true;
          //boolBall = true; 
        } else if (boolBall == false && boolVolley == true) {
          boolBall = true;
        }
    }
  if (mouseX > width*0.22 && mouseX < width*0.78 && mouseY >= height*0.65 && mouseY <= height*0.71) {
    if (death == 1) {
      death = 2;      
    } else if (death == 2) {
      death = 3;
    } else if(death == 3) {
      death = 1;
      reset();
    }
  }
} 
  else 
  if (!died && !scoreBool) {
    if (mouseX > width*0.9 && mouseY < height*0.1){
        if (boolBall == true && boolVolley == true){
          boolBall = false;
          boolVolley = false;
        } else 
        if (boolBall == false && boolVolley == false) {
          boolVolley = true;
          //boolBall = true; 
        } else if (boolBall == false && boolVolley == true) {
          boolBall = true;
        }
    }
  }

  if (died && scoreBool) {
    if (mouseX >= 0 && mouseX <= width*0.35 && mouseY >= height*0.9 && mouseY <= height*0.96) {
      scoreBool = false;
      if (death == 1 && (badPoints1 < 0 || badPoints2 < 0 || badPoints3 < 0)) {
        reset();
      }
      else if (death == 2 && liveCount < 0) {
        reset();
      }
    }
  }else if (died && !scoreBool) {
    if (mouseX >= 0 && mouseX <= width*0.3 && mouseY >= height*0.9 && mouseY <= height*0.96) {
      exit();
    }
  }

}

void mouseReleased() {
  rx = mouseX;
  ry = mouseY;
  //xv = -(px - rx)/8;//
  xv = -map((px - rx),0,width,1,width/10);
  //a = -(py - ry)/8;//
  a = -map((py - ry),0,height,1,height/8);
//println("Y = "+a);
//println("       X = "+xv);
}

void mouseDragged() {
  if (mouseX  >= x-rad && mouseX <= x+rad && mouseY >= y-(rad*1.15) && mouseY <= y+rad*1.15) {
    if ((died && scoreBool) || (died && !scoreBool)) {
      x = mouseX;
      y = mouseY;
      v = mouseY;
      xv = mouseX;
    }
  }
}

void reset(){                // 2052
//if (graphics) {
//  bg.resize(width, height); // palms background size 
//  grass1.resize(int(width/0.2049), round(height*0.25));
//  grass2.resize(int(width/0.2049), round(height*0.25));
//  rectImg1.resize(int(width/0.2049), height);
//  rectImg2.resize(int(width/0.2049), height);
//  moon1.resize(int(width/0.2049), round(height*0.35));
//  moon2.resize(int(width/0.2049), round(height*0.35));
//  moonBgL.resize(int(width/0.3075), height);
//  moonBgR.resize(int(width/0.3075), height);
//  mars1.resize(int(width/0.205), height);
//  mars2.resize(int(width/0.205), height);
//}
// decides ball size depending on portrait/landscape mode
  if (width > height) {
  rad = height*0.08;
  } else if (height > width) {
  rad = height*0.055;
  }

  bRad = rad*1.4; // size of bad guys
  
  myFont1 = createFont("Arial",height*0.09143); // not necessary
  textFont(myFont1);
  //myFont2 = createFont("Segoe Print Bold",32);
  //textFont(myFont1);

noStroke();
fill(255); // prevents ball from changing color when changing scenary
  bBall = createShape(SPHERE,rad);
  bBall.setTexture(basketball);
  sBall = createShape(SPHERE,rad);
  sBall.setTexture(soccerBall);
  vBall = createShape(SPHERE,rad);
  vBall.setTexture(volleyBall);
  eBall = createShape(SPHERE,rad);
  eBall.setTexture(earthBall);
  mBall = createShape(SPHERE,rad);
  //mBall.setTexture(marsBall);
  hazard = createShape(SPHERE,rad*0.9);
  hazard.setTexture(radiation);
  hazardIcon = createShape(SPHERE,rad*0.45);
  hazardIcon.setTexture(radiation);
  
  liveCount = 0;
  plusPoints1 = 0;
  plusPoints2 = 0;
  minusPoints = 0;
  badPoints1 = 0;
  badPoints2 = 0;
  badPoints3 = 0;

  x = width/2;
  y = height*0.32;//(rad*1.15);
  xv = 0;
  xa = 0;//height*0.00018;
  //xg = 2;
  z = 0;
  v = 0;//height*0.00029;
  a = 0;//height*0.00029;
  //g = 0.98;
if (!marsSwitch && !moonSwitch) { 
  g = height*0.001;
} else if (marsSwitch && !moonSwitch) {
  g = height*0.0004;// 0.38
} else if (!marsSwitch && moonSwitch) {
    g = height*0.0002;// 0.16
}

  trans = 210;
  bx1 = width*3;
  by1 = random(height/10, height/1.3);
  bx2 = random(width*1.1, width*2);
  by2 = random(height/10, height/1.3);
  bx3 = random(width*1.1, width*2);
  by3 = random(height/10, height/1.3);
  bx4 = random(width*1.1, width*2);
  by4 = random(height/10, height/1.3);
  bx5 = random(width*1.1, width*2);
  by5 = random(height/10, height/1.3);
  cx = width*4;
  cy = random(height/10, height/1.3);
  cx1 = width*20;
  cy1 = random(height/10, height/1.3);
  nx = random(width*2, width*5);
  ny = random(height/10,height/1.3);
  tx = random(width*1.5, width*2.5);
  tx1 = random(width*2.5, width*3.5);
  tx2 = random(width*3, width*4);
  ty = height+1;
  go2 = false;
  go3 = false;
  go4 = false;
  go5 = false;
  green = 255;
  //sec1 = 0;
  //sec2 = 0;
  //min1 = 0;
  //min2 = 0;
  //hr1 = 0;
  //hr2 = 0;
  pauseCount1 = 0;
  millPause1 = 0 ;
  millPause2 = 0 ;
  mill = 0;//millis();
  mill1 = 0;
  mill2 = 0;
  start = 0;
  //bgStep = width*0.0003;
  floorStep = width*0.003;
  rotateSpeed = (3300/((width+height)/2))*0.7;
  swipe = (6600/((width+height)/2))*0.7;;
  //m = bRad*0.03;
}

  //bg1 = loadImage("skyGrass1.jpg");
  //bg1.resize(width, height);
  //bg2 = loadImage("skyGrass2.jpg");
  //bg2.resize(width, height);
  //bg3 = loadImage("backgroundPalms.png");
  //bg3.resize(width, height);
  //bg4 = loadImage("background4.png");
  //bg4.resize(width, height);
  //bg5 = loadImage("skyGrassNight1.jpg");
  //bg5.resize(width, height); 

      //bg = loadImage("backgroundPalms.png");
      //bg.resize(width, height);
      //grass1 = loadImage("grassOnlyL.png");
      //grass1.resize(int(width/0.2052), round(height*0.25));
      //grass2 = loadImage("grassOnlyR.png");
      //grass2.resize(int(width/0.2052), round(height*0.25));
      //rectImg1 = loadImage("skyGrassLarge1.png");
      //rectImg1.resize(int(width/0.2052), height);
      //rectImg2 = loadImage("skyGrassLarge2.png");
      //rectImg2.resize(int(width/0.2052), height);
      //radiation = loadImage("radiation3a.jpg");
      //basketball = loadImage("Spalding.jpg");
      //soccerBall = loadImage("soccerBall.jpg");
      //volleyBall = loadImage("volleyBall.jpg");
