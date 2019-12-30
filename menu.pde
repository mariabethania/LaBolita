
void menu() {
if (graphics) {
  if (bgY <= 0) { // background control
  bgY += 50;
  }
  if (bgY >= 0) {bgY = 0;}
}
  shadows();
  fill(255,175,0);
  textAlign(CENTER,CENTER);
  textSize(height*0.09143);
  //textFont(myFont2,64);
  text("La Bolita",width*0.5,height*0.16);
  //pushMatrix();
  //translate(0,0,rad*2);
  textSize(height*0.05143);
  fill(255,0,0);
  text("Play/Resume",width*0.5,height*0.47);
  fill(0,0,255);
  if (boolBall && boolVolley) {
  text("<SoccerBall>",width*0.5,height*0.57);
  } else if (!boolBall && !boolVolley) {
  text("<BasketBall>",width*0.5,height*0.57);
  } else if (boolVolley && !boolBall) {
  text("<VolleyBall>",width*0.5,height*0.57);
  }
  if (death == 1) {
    text("<Sudden Death>",width*0.5,height*0.67);
  } else if(death == 2){
    text("<Death Below Zero>",width*0.5,height*0.67);
  } else if (death == 3){
    text("<No Dying here>",width*0.5,height*0.67);
  }
if (!marsSwitch && !moonSwitch) {
  text("<Earth>",width*0.5,height*0.77);
} else if (marsSwitch && !moonSwitch) {
  text("<Mars>",width*0.5,height*0.77);
} else if (!marsSwitch && moonSwitch) {
text("<Moon>",width*0.5,height*0.77);
}
  fill(255,255,0);
  text("Reset",width*0.5,height*0.87);
  textAlign(LEFT,CENTER);
  text("< Quit",0,height*0.93);
  textAlign(RIGHT,CENTER);
  text("Stats >",width,height*0.93);
  textSize(height*0.04);
  textAlign(CENTER,TOP);
  if (graphics) {
  fill(255,100,0);
  text("Gr",width*0.385,0);
  fill(0,255,0);
  text("ap",width*0.465,0);
  fill(255,255,0);
  text("hi",width*0.532,0);
  fill(0,255,255);
  text("cs",width*0.595,0);
  } else {
  fill(100);
  text("Low-Graphics",width*0.5,0);
  }
  pushMatrix();
  translate(x, y, z);
  rotateY(yRotate);
  rotateX(xRotate);
      if (boolBall && boolVolley) {
        shape(sBall);
      } else if (!boolBall && !boolVolley){
        shape(bBall);
      } else if (boolVolley && !boolBall) {
        shape(vBall);
      }
  popMatrix();

/*********************************************************************************/

  //first blue box
  noStroke();
  fill(0,0,trans);
  ellipse(bx1, by1, bRad*1.2, bRad*1.2);
  fill(0, 0, pulse);
  rect(bx1, by1, bRad, bRad);
  fill(0,0,trans);
  ellipse(bx1, by1, bRad*0.9, bRad*0.9);

  // second blue box
  if (go2) {
    noStroke();
    fill(trans,0,0);
    ellipse(bx2, by2, bRad*1.2, bRad*1.2);
    fill(pulse, 0, 0);
    rect(bx2, by2, bRad, bRad);
    fill(trans,0,0);
    ellipse(bx2, by2, bRad*0.9, bRad*0.9);
  }

  // third blue box
  if (go3) {
    noStroke();
    fill(0,trans,0);
    ellipse(bx3, by3, bRad*1.2, bRad*1.2);
    fill(0, pulse, 0);
    rect(bx3, by3, bRad, bRad);
    fill(0,trans,0);
    ellipse(bx3, by3, bRad*0.9, bRad*0.9);
  }

  // fourth blue box
  if (go4) {
    noStroke();
    fill(trans,0,trans);
    ellipse(bx4, by4, bRad*1.2, bRad*1.2);
    fill(pulse, 0, pulse);
    rect(bx4, by4, bRad, bRad);
    fill(trans,0,trans);
    //noStroke();
    //noStroke();
    ellipse(bx4, by4, bRad*0.9, bRad*0.9);
  }

  // fifth blue box
  if (go5) {
    noStroke();
    fill(0,trans,trans);
    ellipse(bx5, by5, bRad*1.2, bRad*1.2);
    fill(0, pulse, pulse);
    rect(bx5, by5, bRad, bRad);
    fill(0,trans,trans);
    ellipse(bx5, by5, bRad*0.9, bRad*0.9);
  }

  // black box
  pushMatrix();
  translate(nx, ny, nz);
  fill(pulse, pulse, 0);
  box(bRad*0.97);
  rotateY(yRotate);
  shape(hazard);
  popMatrix();

  if (pulse <= 0) {
    pulseSwitch = false;
  } else 
  if (pulse >= 255) {
    pulseSwitch = true;
  }
  if (pulseSwitch) {
    pulse -= 10;
  } else {
    pulse += 10;
  }

  // spinning box 1
  //if (spin==false){
  pushMatrix();
  translate(cx, cy, cz);
  rotateY(yRotate);
  rotateZ(zRotate);
  rotateX(xRotate);
  stroke(120, 0, blue);
  fill(red, green, 0);
  box(bRad);
  fill(0, 175);
  popMatrix();
  //cx -= W/78.8;
  //}

  // spinning box2
  //if (spin){
  pushMatrix();
  translate(cx1, cy1, cz1);
  rotateY(yRotate);
  rotateZ(zRotate);
  rotateX(xRotate);
  fill(random(250, 255), random(0, 255), random(0, 255));
  box(bRad);
  fill(0, 0, 175);
  popMatrix();
//  cx1 -= W/112.57;
  //}

  // draw spikes
  noStroke();
  fill(tRed, 255, 0);
  triangle(tx, (ty*0.95), tx-(base), ty, tx+(base), ty);
  fill(tRed1, 255, 0);
  triangle(tx1, (ty*0.95), tx1-(base), ty, tx1+(base), ty);
  fill(tRed2, 255, 0);
  triangle(tx2, (ty*0.95), tx2-(base), ty, tx2+(base), ty);

/********************************************************************************/
//yRotate += 0.03;
//xRotate -= 0.03;

if (mousePressed && mouseX >= width*0.22 && mouseX <= width*0.78 && mouseY >= height*0.45 && mouseY <= height*0.51){
  died = false;
  scoreBool = false;
  if (millPause1 == 0) {
  start = millis();
  }
  if (millPause1 > 0) {
    mill += millis() - millPause1; //23 secs
  }
        mill1 = millis();//23 secs
} else if (mousePressed && mouseX >= width*0.68 && mouseX <= width && mouseY >= height*0.9 && mouseY <= height*0.96) {
  died = true;
  scoreBool = true;
  millPause2 = (millis() - millPause1)+mill;
  } else 
  if (mousePressed && mouseX >= width*0.38 && mouseX <= width*0.62 && mouseY >= height*0.85 && mouseY <= height*0.91){
    reset();
  } 

}

// this function displays font shadows
void shadows() {
  pushMatrix();
translate(3,3,0);
  fill(0);
  textAlign(CENTER,CENTER);
  textSize(height*0.09143);
  //textFont(myFont2,64);
  text("La Bolita",width*0.5,height*0.16);
  //pushMatrix();
  translate(-1,-1,0);
  textSize(height*0.05143);
  text("Play/Resume",width*0.5,height*0.47);
  text("Reset",width*0.5,height*0.87);
  if (boolBall && boolVolley) {
  text("<SoccerBall>",width*0.5,height*0.57);
  } else if (!boolBall && !boolVolley) {
  text("<BasketBall>",width*0.5,height*0.57);
  } else if (boolVolley && !boolBall) {
  text("<VolleyBall>",width*0.5,height*0.57);
  }
  if (death == 1) {
    text("<Sudden Death>",width*0.5,height*0.67);
  } else if(death == 2){
    text("<Death Below Zero>",width*0.5,height*0.67);
  } else if (death == 3){
    text("<No Dying here>",width*0.5,height*0.67);
  }
if (!marsSwitch && !moonSwitch) {
  text("<Earth>",width*0.5,height*0.77);
} else if (marsSwitch && !moonSwitch) {
  text("<Mars>",width*0.5,height*0.77);
} else if (!marsSwitch && moonSwitch) {
text("<Moon>",width*0.5,height*0.77);
}
  textAlign(LEFT,CENTER);
  text("< Quit",0,height*0.93);
  textAlign(RIGHT,CENTER);
  text("Stats >",width,height*0.93);
  popMatrix();
}
