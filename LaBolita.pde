
// Este es el mero mero,...

import cassette.audiofiles.SoundFile;

SoundFile bounce1,bounce2,bounce3,bounce4,bounce5,bounce6,ballKick;
SoundFile handServe1,handServe2,handServe3,handServe4,handServe5,handServe6,boing1,boing2,boing3,boing4;
SoundFile fairy1,fairy2;
int mill,mill1,mill2;
int pauseCount1,millPause1,millPause2,start;
float x, y, z;
float v, a, g;
float xv, xa, xg;
float rad;
float bRad;
int liveCount = 0;
int plusPoints1,plusPoints2;
int minusPoints,badPoints1,badPoints2,badPoints3;
float bx3,bx3_, by3,bx4,bx4_,by4,bx5,bx5_,by5;
float bx1,bx1_, by1, bx2,bx2_, by2;
float bz = 0;
float bz1 = 0;
float bz2 = 0;
float cz1; 
float cz;
boolean go2 = false;
boolean go3 = false;
boolean go4 = false;
boolean go5 = false;
float red = 255;
int green = 255; 
float blue = 255;
float tRed, tRed1, tRed2;
float trans; 
float cx, cy;
float cx1, cy1;
float tx, tx1, tx2, ty;
float nx, ny, nz;
float cx_, cy_;
float cx1_, cy1_;
float tx_, tx1_, tx2_, ty_;
float nx_, ny_, nz_;
float px, py, rx, ry;
float base;
float cloudX, cloudY, cloudW, cloudH;
float cloudX1, cloudY1, cloudW1, cloudH1;
float cloudX2, cloudY2, cloudW2, cloudH2;
float xRotate, yRotate, zRotate;
float m = 0;
float rectX,rectX1,rectY,rectX2,rectX3,moonXl,moonXr,moonXbgL,moonXbgR;
float rectX2052,moonXbg3078,grassHeight,moonHeight;
float textHeightPos, textWidthPos,textHeight;
float bgY;
float bgStep;
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
boolean graphBool = false;
int death = 1;
int hand = 1;
int bnc1 = 1;
int bnc2 = 1;
PImage soccerBall;
PImage basketball;
PImage volleyBall;
PImage radiation;
PImage earthBall;
PImage marsBall;
boolean marsSwitch = false;
boolean moonSwitch = false;
PImage moon1,moon2;
PImage moonBgL,moonBgR;
PImage mars1,mars2;
PImage rectImg1,rectImg2,grass1,grass2,bg;
PShape bBall;
PShape sBall;
PShape vBall;
PShape eBall;
PShape mBall;
PShape hazard,hazardIcon;
PFont myFont1,myFont2;
float W;
void setup() {

  //fullScreen(P3D,1);
  orientation(PORTRAIT);
  size(displayWidth,displayHeight,P3D);
  //size(394, 700, P3D);
  
W = width*0.56;
      radiation = loadImage("radiation3a.jpg");
      basketball = loadImage("Spalding.jpg");
      soccerBall = loadImage("soccerBall.jpg");
      volleyBall = loadImage("volleyBall.jpg");
  bounce1 = new SoundFile(this, "Bounce1.mp3");
  bounce2 = new SoundFile(this, "Bounce2.mp3");
  bounce3 = new SoundFile(this, "Bounce3.mp3");
  bounce4 = new SoundFile(this, "Bounce4.mp3");
  bounce5 = new SoundFile(this, "Bounce5.mp3");
  bounce6 = new SoundFile(this, "Bounce6.mp3");
  ballKick = new SoundFile(this, "BallKick.mp3");
  handServe1 = new SoundFile(this, "handServe1.mp3");
  handServe2 = new SoundFile(this, "handServe2.mp3");
  handServe3 = new SoundFile(this, "handServe3.mp3");
  handServe4 = new SoundFile(this, "handServe4.mp3");
  handServe5 = new SoundFile(this, "handServe5.mp3");
  handServe6 = new SoundFile(this, "handServe6.mp3");
  boing1 = new SoundFile(this, "boing1.mp3");
  boing2 = new SoundFile(this, "boing2.mp3");
  boing3 = new SoundFile(this, "boing3.mp3");
  boing4 = new SoundFile(this, "boing4.mp3");
  fairy1 = new SoundFile(this, "fairy1.mp3");
  fairy2 = new SoundFile(this, "fairy2.mp3");

  xRotate = 0;
  yRotate = 0;
  zRotate = 0;
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
  cz = 0;
  cz1 = 0;

}

void draw() {
                    // **************** this lines refresh the scrolling background looping images *********
if (graphics) {
    if ((!marsSwitch && !moonSwitch) || (marsSwitch && !moonSwitch)) {
      if (rectX1 <= -rectX2052) {
          rectX1 = width;
        }
      if(rectX2 <= -rectX2052) {
          rectX2 = width;
      } 
    } else 
    if (!marsSwitch && moonSwitch) {  
      if (moonXbgL <= -moonXbg3078) {      
          moonXbgL = width;
        }
      if(moonXbgR <= -moonXbg3078) {
          moonXbgR = width;
        }
    }
     
      // decides which mode to show depending on user's choice
    if (!marsSwitch && !moonSwitch) {
    image(rectImg1,rectX1,rectY);
    image(rectImg2,rectX2,rectY);
    image(grass1,rectX,grassHeight);
    image(grass2,rectX3,grassHeight);
    rectX1 -= bgStep;
    rectX2 -= bgStep;
    image(bg,0,bgY);
    } else if (marsSwitch && !moonSwitch) {
    image(mars1,rectX,rectY);
    image(mars2,rectX3,rectY);
    }
    else if (!marsSwitch && moonSwitch) {
    image(moonBgL,moonXbgL,rectY);
    image(moonBgR,moonXbgR,rectY);
    image(moon1,rectX,moonHeight);
    image(moon2,rectX3,moonHeight);
    moonXbgL -= bgStep;
    moonXbgR -= bgStep;
    }
} else if (!graphics) {
  noStroke();
    if (!marsSwitch && !moonSwitch) {
      background(0, 190, 200);
      fill(0, 125, 0);
      rect(width*0.5, height*0.93, width*1.5, height*0.2);
    } else if (marsSwitch && !moonSwitch) {
      background(220, 150, 100);
      fill(150, 60, 0);
      rect(width*0.5, height*0.93, width*1.5, height*0.2);
      
    } else if (!marsSwitch && moonSwitch) {
      background(0, 0, 15);
      fill(150);
      rect(width*0.5, height*0.93, width*1.5, height*0.2);
    }
    
} // this closes bracket of "if (graphics)" statement


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

} 
// ends draw function

void mousePressed() {
  if (!died ){
    //if (hand > 5) {hand = 1;} else {hand++;}
hand = int(random(1,7));
    switch (hand) {
      case 1:
      handServe1.play();
      break;
      case 2:
      handServe2.play();
      break;
      case 3:
      handServe3.play();
      break;
      case 4:
      handServe4.play();
      break;
      case 5:
      handServe5.play();
      break;
      case 6:
      handServe6.play();
      break;
    }
  }
  px = mouseX; 
  py = mouseY;
  
  if (died && !scoreBool) {
    
    if (mouseX >= width*0.3 && mouseX <= width*0.7 && mouseY <= height*0.1) {
      if (graphics) {
        graphics = false; 
        removeGraphics();
      } else {
        //fill(0,0,255);
        //rect(width/2,height/2,width,height*0.1);
        //fill(255);
        //text("Switching to High Graphics...",width/2,height/2);
        graphics = true; 
        //if (!graphBool) {
        loadGraphics();
        //}
      }
    }
    if (mouseX >= width*0.38 && mouseX <= width*0.62 && mouseY >= height*0.75 && mouseY <= height*0.81) {
      if (!marsSwitch && !moonSwitch) {
        fill(0,0,255);
        rect(width/2,height/2,width,height*0.1);
        fill(255);
        text("Going to Mars...",width/2,height/2);
        marsSwitch = true;
        moonSwitch = false;
        reset();
      } else if (marsSwitch && !moonSwitch) {
        fill(0,0,255);
        rect(width/2,height/2,width,height*0.1);
        fill(255);
        text("Going to the Moon...",width/2,height/2);
        marsSwitch = false;
        moonSwitch = true;
        reset();
      } else if (!marsSwitch && moonSwitch) {
        fill(0,0,255);
        rect(width/2,height/2,width,height*0.1);
        fill(255);
        text("Back to Earth...",width/2,height/2);
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
  
  //ballKick.play();
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
//  loadGraphics();
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
  hazardIcon = createShape(SPHERE,rad*0.47);
  hazardIcon.setTexture(radiation);
  
  liveCount = 0;
  plusPoints1 = 0;
  plusPoints2 = 0;
  minusPoints = 0;
  badPoints1 = 0;
  badPoints2 = 0;
  badPoints3 = 0;

  xv = 0;
  x = width*0.5;
if (!marsSwitch && !moonSwitch) { 
  g = height*0.001165;
} else if (marsSwitch && !moonSwitch) {
  g = height*0.00044;// 0.38
} else if (!marsSwitch && moonSwitch) {
    g = height*0.0002;// 0.16
}
  a = 0;//height*0.00029;
  v = height*0.32;//height*0.00029;
  y = height*0.32;//(rad*1.15);
  xa = 0;//height*0.57;//height*0.00018;
  //xg = 2;
  z = 0;
  //g = 0.98;

  trans = 70;
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
  tx = random(width*2, width*3);
  tx1 = random(width*2, width*3);
  tx2 = random(width*2, width*3);
  ty = height+1;
  go2 = false;
  go3 = false;
  go4 = false;
  go5 = false;
  green = 255;
  pauseCount1 = 0;
  millPause1 = 0 ;
  millPause2 = 0 ;
  mill = 0;
  mill1 = 0;
  mill2 = 0;
  start = 0;
  bgStep = width*0.0004;
  floorStep = width*0.003;
  rotateSpeed = (3300/((width+height)/2))*0.7;
  swipe = (6600/((width+height)/2))*0.7;;
  //m = bRad*0.03;
if (height > width) {
  bx1_ = width*0.007;
   bx2_ = width*0.006;
    bx3_ = width*0.005;
     bx4_ = width*0.004;
      bx5_ = width*0.003;
  nx_ = width*0.003;
  cx_ = width*0.009;
  cx1_ = width*0.01;
  tx_ = width*0.002;
  tx1_ = width*0.003;
  tx2_ = width*0.004;
}
else if (height < width) {
  bx1_ = W*0.007;
   bx2_ = W*0.006;
    bx3_ = W*0.005;
     bx4_ = W*0.004;
      bx5_ = W*0.003;
  nx_ = W*0.003;
  cx_ = W*0.009;
  cx1_ = W*0.01;
  tx_ = W*0.002;
  tx1_ = W*0.003;
  tx2_ = W*0.004;
}

textHeightPos = height*0.005;
textWidthPos =width/2;
textHeight = height*0.09;

}
