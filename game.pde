void game() {
strokeWeight(1);
//if ((!marsSwitch && !moonSwitch) || (marsSwitch && !moonSwitch)) {
    //  if (graphics) {
    //  if (rectX <= -(((width/0.2052)*2)-width)) {      
    //      rectX = width;
    //    }
    //  if(rectX3 <= -(((width/0.2052)*2)-width)) {
    //      rectX3 = width;
    //    }
    //  rectX -= floorStep;
    //  rectX3 -= floorStep;
      
    //  if (bgY > -height) {
    //  bgY -= height/70;
    //  }
    //}
// *****************************
//} else 
//if ((!marsSwitch && moonSwitch)) {
//  if (moonXbgL <= -(((width/0.3078)*2)-width)) {      
//      moonXbgL = width;
//    }
//  if(moonXbgR <= -(((width/0.3078)*2)-width)) {
//      moonXbgR = width;
//    }
//rectX -= floorStep;
//rectX3 -= floorStep;
//}

//fill(0);
//textSize(32);
//text(rectX,width/2,height*0.75);
//text(rectX3,width/2,height*0.85);

 translate(0,0,1); 
 
  //if (!go1 && !go2) {
  //  //background(bg1);//0, 175, 200);
  //  image(rectImg1,rectX1,rectY);//0, 175, 200);
  //} else 
  //if (go1 && !go2) {
  //  //background(bg2);//0, 175, 200);
  //  image(rectImg1,rectX1,rectY);//0, 175, 200);
  //} else 
  //if (go1 && go2) {
  //  //background(bg5);//0, 175, 200);
  //  image(rectImg1,rectX1,rectY);//0, 175, 200);
  //}  
  
//rectX1 += 0.2;
//rectX2 += 0.2;

// *****************************************************************************************
  
  // La Bolita
  pushMatrix();
  translate(x, y, z);
  rotateZ(-xv*rotateSpeed);
  if (boolBall && boolVolley) {
    shape(sBall);
  } else if (!boolBall && !boolVolley) {
    shape(bBall);
  } else if (boolVolley && !boolBall) {
    shape(vBall);
  }
  popMatrix();
  //a += g;
  //v += a;
  //y = v;
  //xv += xa;
  //x += xv;

  // first blue box
  noStroke();
  fill(0,0,trans/3);
  ellipse(bx1, by1, bRad*1.2, bRad*1.2);
  fill(0, 0, pulse);
  rect(bx1, by1, bRad, bRad);
  fill(0,0,trans/3);
  ellipse(bx1, by1, bRad*0.9, bRad*0.9);

  // second blue box
  if (go2) {
    noStroke();
    fill(trans/3,0,0);
    ellipse(bx2, by2, bRad*1.2, bRad*1.2);
    fill(pulse, 0, 0);
    rect(bx2, by2, bRad, bRad);
    fill(trans/3,0,0);
    ellipse(bx2, by2, bRad*0.9, bRad*0.9);
  }

  // third blue box
  if (go3) {
    noStroke();
    fill(0,trans/3,0);
    ellipse(bx3, by3, bRad*1.2, bRad*1.2);
    fill(0, pulse, 0);
    rect(bx3, by3, bRad, bRad);
    fill(0,trans/3,0);
    ellipse(bx3, by3, bRad*0.9, bRad*0.9);
  }

  // fourth blue box
  if (go4) {
    noStroke();
    fill(trans/3,0,trans/3);
    ellipse(bx4, by4, bRad*1.2, bRad*1.2);
    fill(pulse, 0, pulse);
    rect(bx4, by4, bRad, bRad);
    fill(trans/3,0,trans/3);
    //noStroke();
    //noStroke();
    ellipse(bx4, by4, bRad*0.9, bRad*0.9);
  }

  // fifth blue box
  if (go5) {
    noStroke();
    fill(0,trans/3,trans/3);
    ellipse(bx5, by5, bRad*1.2, bRad*1.2);
    fill(0, pulse, pulse);
    rect(bx5, by5, bRad, bRad);
    fill(0,trans/3,trans/3);
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

  //xRotate -= 0.05;
  //yRotate += 0.05;
  //zRotate -= 0.05;

  // draw spikes
  noStroke();
  fill(tRed, 255, 0);
  triangle(tx, (ty*0.95), tx-(base), ty, tx+(base), ty);
  fill(tRed1, 255, 0);
  triangle(tx1, (ty*0.95), tx1-(base), ty, tx1+(base), ty);
  fill(tRed2, 255, 0);
  triangle(tx2, (ty*0.95), tx2-(base), ty, tx2+(base), ty);
  //tx -= W/225;
  //tx1 -= W/175;
  //tx2 -= W/143;
  //y += 10;
  //y += a;

  //*******************************
// change text color according to background
  textSize(height*0.09);
  textAlign(CENTER, TOP);
  if (!marsSwitch) {
  fill(255,175,0);
  } else {fill(255,0,0);}

  text(liveCount, width/2, height*0.005); // prints points

//updates ball position
  a += g;
  v += a;
  y = v;
  //xv += xa;
  x += xv;

// updates every other object position according to portrait/ladscape modes
if (height > width) {
  bx1 -= width/120;
  if (go2) {bx2 -= width/150;}
   if (go3) {bx3 -= width/180;}
    if (go4) {bx4 -= width/210;}
      if (go5) {bx5 -= width/240;}
  nx -= width/394;
  cx -= width/84;
  cx1 -= width/110;
  tx -= width/200;
  tx1 -= width/170;
  tx2 -= width/140;
} else if (width > height) {
  bx1 -= W/120;
  if (go2) {bx2 -= W/150;}
   if (go3) {bx3 -= W/180;}
    if (go4) {bx4 -= W/210;}
      if (go5) {bx5 -= W/240;}
  nx -= W/394;
  cx -= W/84;
  cx1 -= W/110;
  tx -= W/200;
  tx1 -= W/170;
  tx2 -= W/140;
}

  //******************************  // updates ball Y position

  // checks bottom & top edges of the screen
  if (y >= height-(rad*1.15)) {
    y = height-(rad*1.15);
    a = -1*(abs(a*0.95));
    //ground.trigger();
  } else 
  if (y <= rad*1.15) {
    y = (rad*1.15);
    a = (abs(a*0.3));
  }

  // Cubo Azul Y edges
  if (y + rad >= by1-(bRad*0.5)) {
    if (y-rad <= by1 && x+(rad) >= bx1 && x-(rad) <= bx1 ) {
      y = (by1-(bRad*0.5))-rad;
      a = -1*(abs(a*0.99));
      liveCount--;
      badPoints1--;
      //pulseBlue= 200;
      //pulseGreen = 0;
    }
  }

  if (y-rad <= by1+(bRad*0.5)) {
    if (y+rad >= by1 && x+(rad) >= bx1 && x-(rad) <= bx1 ) {
      y = (by1+(bRad*0.5))+rad;
      a = (abs(a*0.99));
      liveCount--;
      badPoints1--;
      //pulseRed = 0;
      //pulseGreen = 0;
    }
  }

  // second box edges
  if (go2) {
    if (y + rad >=  by2-(bRad*0.5)) {
      if (y-rad <=  by2 && x+(rad) >= bx2 && x-(rad) <= bx2 ) {
        y = ( by2-(bRad*0.5))-rad;
        a = -1*(abs(a*0.99));
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }

    if (y-rad <=  by2+(bRad*0.5)) {
      if (y+rad >=  by2 && x+(rad) >= bx2 && x-(rad) <= bx2 ) {
        y = ( by2+(bRad*0.5))+rad;
        a = (abs(a*0.99));
        liveCount--;
      badPoints1--;
        // pulseRed = 0;
        //pulseGreen = 0;
      }
    }
  }

  // third box edges
  if (go3) {
    if (y + rad >= by3-(bRad*0.5)) {
      if (y-rad <= by3 && x+(rad) >= bx3 && x-(rad) <= bx3 ) {
        y = (by3-(bRad*0.5))-rad;
        a = -1*(abs(a*0.99));
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }

    if (y-rad <= by3+(bRad*0.5)) {
      if (y+rad >= by3 && x+(rad) >= bx3 && x-(rad) <= bx3 ) {
        y = (by3+(bRad*0.5))+rad;
        a = (abs(a*0.99));
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }
  }

  // fourth box Y edges
  if (go4) {
    if (y + rad >= by4-(bRad*0.5)) {
      if (y-rad <= by4 && x+(rad) >= bx4 && x-(rad) <= bx4 ) {
        y = (by4-(bRad*0.5))-rad;
        a = -1*(abs(a*0.99));
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }

    if (y-rad <= by4+(bRad*0.5)) {
      if (y+rad >= by4 && x+(rad) >= bx4 && x-(rad) <= bx4 ) {
        y = (by4+(bRad*0.5))+rad;
        a = (abs(a*0.99));
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }
  }

  // fifth box Y edges
  if (go5) {
    if (y + rad >= by5-(bRad*0.5)) {
      if (y-rad <= by5 && x+(rad) >= bx5 && x-(rad) <= bx5 ) {
        y = (by5-(bRad*0.5))-rad;
        a = -1*(abs(a*0.99));
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }

    if (y-rad <= by5+(bRad*0.5)) {
      if (y+rad >= by5 && x+(rad) >= bx5 && x-(rad) <= bx5 ) {
        y = (by5+(bRad*0.5))+rad;
        a = (abs(a*0.99));
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }
  }

  // updates ball X position

  // checks left & right edges
  if (x >= width-rad) {
    x = width-rad;
    xa *= -1*abs(xa*0.99);
    xv *= -0.99;
    //rightWall.trigger();
  } else 
  if (x <= rad) {
    x = rad;
    xa *= -1*abs(xa*0.99);
    xv *= -0.99;
    //leftWall.trigger();
  }

  // blue box X edges
  if (x+rad >=  bx1-(bRad*0.5)) {
    if (x-rad <=  bx1 && y + rad >=   by1 && y-(rad) <=   by1+(rad*0.)) {
      x = ( bx1-(bRad*0.5))-rad;
      //xa *= -1 * abs(xa*0.99);
      xv *= -0.99;
      liveCount--;
      badPoints1--;
      //pulseRed = 0;
      //pulseGreen = 0;
    }
  }

  if (x-rad <=  bx1+(bRad*0.5)) {
    if (x+rad >=  bx1- (rad*m) && y + rad >=   by1 && y-rad <=   by1 ) {
      x = ( bx1+(bRad*0.5))+rad;
      xa *= -1*abs(xa*0.99);
      xv *= -0.99;
      liveCount--;
      badPoints1--;
      //pulseRed = 0;
      //pulseGreen = 0;
    }
  }

  // checks second box X edges
  if (go2) {
    if (x+rad >= bx2-(bRad*0.5)) {
      if (x-rad <= bx2 && y + rad >= by2-(rad*m) && y-(rad) <= by2+(rad*0.)) {
        x = (bx2-(bRad*0.5))-rad;
        //xa *= -1 * abs(xa*0.99);
        xv *= -0.99;
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }

    if (x-rad <= bx2+(bRad*0.5)) {
      if (x+rad >= bx2- (rad*m) && y + rad >= by2-(rad*m) && y-rad <= by2 ) {
        x = (bx2+(bRad*0.5))+rad;
        xa *= -1*abs(xa*0.99);
        xv *= -0.99;
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }
  }

  // checks third box X edges
  if (go3) {
    if (x+rad >= bx3-(bRad*0.5)) {
      if (x-rad <= bx3 && y + rad >= by3-(rad*m) && y-(rad) <= by3+(rad*0.)) {
        x = (bx3-(bRad*0.5))-rad;
        //xa *= -1 * abs(xa*0.99);
        xv *= -0.99;
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }

    if (x-rad <= bx3+(bRad*0.5)) {
      if (x+rad >= bx3- (rad*m) && y + rad >= by3-(rad*m) && y-rad <= by3 ) {
        x = (bx3+(bRad*0.5))+rad;
        xa *= -1*abs(xa*0.99);
        xv *= -0.99;
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }
  }

  // checks fourth box X edges
  if (go4) {
    if (x+rad >= bx4-(bRad*0.5)) {
      if (x-rad <= bx4 && y + rad >= by4-(rad*m) && y-(rad) <= by4+(rad*0.)) {
        x = (bx4-(bRad*0.5))-rad;
        //xa *= -1 * abs(xa*0.99);
        xv *= -0.99;
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }

    if (x-rad <= bx4+(bRad*0.5)) {
      if (x+rad >= bx4- (rad*m) && y + rad >= by4-(rad*m) && y-rad <= by4 ) {
        x = (bx4+(bRad*0.5))+rad;
        xa *= -1*abs(xa*0.99);
        xv *= -0.99;
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }
  }

  // checks fifth box X edges
  if (go5) {
    if (x+rad >= bx5-(bRad*0.5)) {
      if (x-rad <= bx5 && y + rad >= by5-(rad*m) && y-(rad) <= by5+(rad*0.)) {
        x = (bx5-(bRad*0.5))-rad;
        //xa *= -1 * abs(xa*0.99);
        xv *= -0.99;
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }

    if (x-rad <= bx5+(bRad*0.5)) {
      if (x+rad >= bx5- (rad*m) && y + rad >= by5-(rad*m) && y-rad <= by5 ) {
        x = (bx5+(bRad*0.5))+rad;
        xa *= -1*abs(xa*0.99);
        xv *= -0.99;
        liveCount--;
      badPoints1--;
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }
  }

  // Cubo Negro
  if (y+rad >= ny-(bRad*0.5) && y-rad <= ny+(bRad*0.5) && x+rad >= nx-(bRad*0.5) && x-rad <= nx+(bRad*0.5) ) {
    liveCount -= 10;
      badPoints2 -= 10;
    //pulse = 255;
  }

  // checks spinning box1 for touch
  if (y+rad >= cy-(bRad*0.5) && y-rad <= cy+(bRad*0.5) && x+rad >= cx-(bRad*0.5) && x-rad <= cx+(bRad*0.5) ) {
    green -= 5;
    //textSize(32);
    //fill(red, green, 0);
    //  text(-(green-255), cx, cy-rad*2);
    //liveCount += 10/51;
    //pulseBlue= 255;
    //pulseGreen = 150;
  }

  if (green == 0) {
    liveCount += 10;
      plusPoints1 += 10;
    green = 255;
  }

  // checks spinning box2 for touch
  if (y+rad >= cy1-(bRad*0.5) && y-rad <= cy1+(bRad*0.5) && x+rad >= cx1-(bRad*0.5) && x-rad <= cx1+(bRad*0.5)) {
    liveCount += 3;
      plusPoints2 += 3;
    //pulseRed = 0;
    //pulseGreen = 255;
  }

  if (liveCount >= 300) {
    if (go2 == false) {
      go2 = true;
    }
    if (liveCount >= 500) {
      if (go3 == false) {
        go3 = true;
      }
      if (liveCount >= 1000) {
        if (go4 == false) {
          go4 = true;
        }
        if (liveCount >= 2000) {
          if (go5 == false) {
            go5 = true;
          }
        }
      }
    }
  }

  //bx -= 3; //***************************************************************************************

  if (bx1 < -rad*2) {
    bx1 = width+(rad*2);
    by1 = random(height/10, height/1.3);
  }

  if (bx2 < -rad*2) {
    bx2 = random(width+(rad*2), width+(rad*3));
    by2 = random(height/10, height/1.3);
  }

  if (bx3 < -rad*2) {
    bx3 = random(width+(rad*2), width+(rad*3));
    by3 = random(height/10, height/1.3);
  }

  if (bx4 < -rad*2) {
    bx4 = random(width+(rad*2), width+(rad*3));
    by4 = random(height/10, height/1.3);
  }

  if (bx5 < -rad*2) {
    bx5 = random(width+(rad*2), width+(rad*3));
    by5 = random(height/10, height/1.3);
  }


  if (cx < -rad*5) {
    cx = width+(rad*5);
    cy = random(height/10, height/1.3);
  }


  if (cx1 < -rad*5) {
    cx1 = random(width*10, width*20);
    cy1 = random(height/10, height/1.3);
  }

  if (nx < -rad*5) {
    nx = random(width*2, width*5);
    ny = random(height/10, height/1.3);
  }

  // checks spikes edges
  if (y+rad >= (ty*0.95) && x+rad >= tx && x-rad <= tx) {
    y = (ty*0.95)-rad;
    a = -1*(abs(a*0.95));
    liveCount--;
      badPoints3--;
    tRed = 255;
  }

  if (y+rad >= (ty*0.95) && x+rad >= tx1 && x-rad <= tx1) {
    y = (ty*0.95)-rad;
    a = -1*(abs(a*0.95));
    liveCount--;
      badPoints3--;
    tRed1 = 255;
  }

  if (y+rad >= (ty*0.95) && x+rad >= tx2 && x-rad <= tx2) {
    y = (ty*0.95)-rad;
    a = -1*(abs(a*0.95));
    liveCount--;
      badPoints3--;
    tRed2 = 255;
  }

if (tRed > 0) {
  tRed -= 10;
}
if (tRed1 > 0) {
  tRed1 -= 10;
}
if (tRed2 > 0) {
  tRed2 -= 10;
}
  xv *= 0.995; // bouncing against spikes

  if (tx <= -rad*2) {
    tx = random(width, width*2);
  }


  if (tx1 <= -rad*2) {
    tx1 = random(width, width*2);
  }


  if (tx2 <= -rad*2) {
    tx2 = random(width, width*2);
  }
  

// ********************************************
    if (death == 1 && (badPoints1 < 0 || badPoints2 < 0 || badPoints3 < 0)) {
      died = true;
      scoreBool = true;
      //sec2 += (second() - sec1);
      //min2 += ((minute() - min1));
      //hr2 += (hour() - hr1);
//bgY = -height*0.65; /*********************************************************** background */
      mill2 += millis()-mill1;
      } 
      else if (death == 2 && liveCount < 0) {
      died = true;
      scoreBool = true;
      //sec2 += (second() - sec1);
      //min2 += ((minute() - min1));
      //hr2 += (hour() - hr1);
//bgY = -height*0.65; /*********************************************************** background */
      mill2 += millis()-mill1;
      } 
    
  //if (death == 3) {
  //} else if (death == 2 && liveCount < 0) {
  //    died = true;
  //    reset();
  //  } else if(death == 1) {
  //    if (badPoints1 < 0 || badPoints2 < 0 || badPoints3 < 0){
  //      died = true;
  //      reset();
  //    }
  //  }
/******************************** mouse pressed *******************************/

  if (mousePressed && mouseX < width*0.60 && mouseX > width*0.40 && mouseY < height*0.1) {
    died = true;
    //menu();
//bgY = -height*0.65; /*********************************************************** background */
    //mill = millis();  
    mill2 += millis()-mill1; // 75 secs, millis() = (23+75)
    millPause1 = millis();
    pauseCount1++;
  //mill2 = mill2 - mill;
      //sec2 += (second() - sec1) ;
      //min2 += ((minute() - min1) );
      //hr2 += (hour() - hr1);

      //if (sec2 > 59) {
      //  min2 += 1;
      //  sec2 = 0;
      //}
      //if (min2 > 59) {
      //  hr2 += 1;
      //  min2 = 0;
      //}
    //secPause1 = second();
    //minPause1 = minute();
}

  if (mousePressed && mouseX <= width*0.1 && mouseY <= height*0.1) {
    reset();
  }

  //if (mousePressed && mouseX > width*0.9 && mouseY < height*0.1) {
  //    if (boolBall == true && boolVolley == true){
  //      boolBall = false;
  //      boolVolley = false;
  //    } else 
  //    if (boolBall == false && boolVolley == false) {
  //      boolVolley = true;
  //      //boolBall = true; 
  //    } else if (boolBall == false && boolVolley == true) {
  //      boolBall = true;
  //    }
  //}
    //text(sec2,width/2,height-rad*2);
}
