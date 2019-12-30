void game() {
strokeWeight(1);
if (graphics) {
  if ((!marsSwitch && !moonSwitch) || (marsSwitch && !moonSwitch)) {
    if (rectX <= -rectX2052) {      
        rectX = width;
      }
    if(rectX3 <= -rectX2052) {
        rectX3 = width;
      }
    rectX -= floorStep;
    rectX3 -= floorStep;
    
    if (bgY > -height) {
    bgY -= height/70;
    }
      
    //*****************************
  } else 
  if ((!marsSwitch && moonSwitch)) {
    if (rectX <= -rectX2052) {      
        rectX = width;
      }
    if(rectX3 <= -rectX2052) {
        rectX3 = width;
      }
    rectX -= floorStep;
    rectX3 -= floorStep;
  }
}

 translate(0,0,1); 
 // this commented code below was intended for background changing each at different levels of the game
 //*******************************************************************************
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
  fill(0,0,trans);
  ellipse(bx1, by1, bRad*1.27, bRad*1.27);
  fill(0, 0, pulse);
  rect(bx1, by1, bRad, bRad);
  fill(0,0,trans);
  ellipse(bx1, by1, bRad, bRad);

  // second blue box
  if (go2) {
    noStroke();
    fill(trans,0,0);
    ellipse(bx2, by2, bRad*1.27, bRad*1.27);
    fill(pulse, 0, 0);
    rect(bx2, by2, bRad, bRad);
    fill(trans,0,0);
    ellipse(bx2, by2, bRad, bRad);
  }

  // third blue box
  if (go3) {
    noStroke();
    fill(0,trans,0);
    ellipse(bx3, by3, bRad*1.27, bRad*1.27);
    fill(0, pulse, 0);
    rect(bx3, by3, bRad, bRad);
    fill(0,trans,0);
    ellipse(bx3, by3, bRad, bRad);
  }

  // fourth blue box
  if (go4) {
    noStroke();
    fill(trans,0,trans);
    ellipse(bx4, by4, bRad*1.27, bRad*1.27);
    fill(pulse, 0, pulse);
    rect(bx4, by4, bRad, bRad);
    fill(trans,0,trans);
    //noStroke();
    //noStroke();
    ellipse(bx4, by4, bRad, bRad);
  }

  // fifth blue box
  if (go5) {
    noStroke();
    fill(0,trans,trans);
    ellipse(bx5, by5, bRad*1.27, bRad*1.27);
    fill(0, pulse, pulse);
    rect(bx5, by5, bRad, bRad);
    fill(0,trans,trans);
    ellipse(bx5, by5, bRad, bRad);
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
  fill(0,tRed1, 255);
  triangle(tx1, (ty*0.95), tx1-(base), ty, tx1+(base), ty);
  fill(255,tRed2/2, tRed2);
  triangle(tx2, (ty*0.95), tx2-(base), ty, tx2+(base), ty);
  //tx -= W/225;
  //tx1 -= W/175;
  //tx2 -= W/143;
  //y += 10;
  //y += a;

  //*******************************
// change text color according to background
  textSize(textHeight);
  textAlign(CENTER, TOP);
  //if (!marsSwitch) {
  //fill(255,175,0);
  //} else {fill(255,0,0);}
  fill(255,0,0);
  text(liveCount, textWidthPos, textHeightPos); // prints points

//updates ball position
  a += g;
  v += a;
  y = v;
  //xv += xa;
  xv *= 0.995; // bouncing against spikes
  x += xv;

// updates every other object position according to portrait/ladscape modes
    bx1 -= bx1_;
    if (go2) {bx2 -= bx2_;}
     if (go3) {bx3 -= bx3_;}
      if (go4) {bx4 -= bx4_;}
        if (go5) {bx5 -= bx5_;}
    nx -= nx_;
    cx -= cx_;
    cx1 -= cx1_;
    tx -= tx_;
    tx1 -= tx1_;
    tx2 -= tx2_;

  // checks bottom & top edges of the screen
  if (y >= height-(rad*1.15)) {
    y = height-(rad*1.15);
    a = -1*(abs(a*0.95));
      bounce1.play();

    //ground.trigger();
  } else 
  if (y <= rad*1.15) {
    y = (rad*1.15);
    a = (abs(a*0.3));
      bounce2.play();
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
      boing3.play();
  }
  }

  if (y-rad <= by1+(bRad*0.5)) {
    if (y+rad >= by1 && x+(rad) >= bx1 && x-(rad) <= bx1 ) {
      y = (by1+(bRad*0.5))+rad;
      a = (abs(a*0.99));
      liveCount--;
      badPoints1--;
      boing3.play();
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
      boing3.play();
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
      boing3.play();
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
      boing3.play();
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
      boing3.play();
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
      boing3.play();
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
      boing3.play();
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
      boing3.play();
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }
  }


  // checks left & right edges
  if (x >= width-rad) {
    x = width-rad;
    xa *= -1*abs(xa*0.99);
    xv *= -0.99;
      bounce6.play();
    //rightWall.trigger();
  } else 
  if (x <= rad) {
    x = rad;
    xa *= -1*abs(xa*0.99);
    xv *= -0.99;
    //leftWall.trigger();
      bounce3.play();
  }

  // blue box X edges
  if (x+rad >=  bx1-(bRad*0.5)) {
    if (x-rad <=  bx1 && y + rad >=   by1 && y-(rad) <=   by1+(rad*0.)) {
      x = ( bx1-(bRad*0.5))-rad;
      //xa *= -1 * abs(xa*0.99);
      xv *= -0.99;
      liveCount--;
      badPoints1--;
      boing3.play();
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
      boing3.play();
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
      boing3.play();
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
      boing3.play();
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
      boing3.play();
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
      boing3.play();
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
      boing3.play();
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
      boing3.play();
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
      boing3.play();
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
      boing3.play();
        //pulseRed = 0;
        //pulseGreen = 0;
      }
    }
  }

  // Cubo Negro
  if (y+rad >= ny-(bRad*0.5) && y-rad <= ny+(bRad*0.5) && x+rad >= nx-(bRad*0.5) && x-rad <= nx+(bRad*0.5) ) {
    liveCount -= 10;
      badPoints2 -= 10;
      boing4.play();
    //pulse = 255;
  }

  // checks spinning box1 for touch
  if (y+rad >= cy-(bRad*0.5) && y-rad <= cy+(bRad*0.5) && x+rad >= cx-(bRad*0.5) && x-rad <= cx+(bRad*0.5) ) {
    green -= 5;
  }

  if (green == 0) {
    fairy1.play();
    liveCount += 10;
      plusPoints1 += 10;
    green = 255;
  }

  // checks spinning box2 for touch
  if (y+rad >= cy1-(bRad*0.5) && y-rad <= cy1+(bRad*0.5) && x+rad >= cx1-(bRad*0.5) && x-rad <= cx1+(bRad*0.5)) {
    liveCount += 3;
      plusPoints2 += 3;
    fairy2.play();
    //pulseRed = 0;
    //pulseGreen = 255;
  }

// ************************* checks for 2nd, 3rd, 4th and 5th levels
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

  // randomly generates objects's next position after disapearing on left edge
  //***************************************************************************************

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
    a = -1*(abs(a*0.9));
    xv = -((tx - x)*0.1);
    a -= abs(xv/2);
    liveCount--;
      badPoints3--;
    tRed = 255;
    boing1.play();
  }
  if (y+rad >= (ty*0.95) && x+rad >= tx1 && x-rad <= tx1) {
    y = (ty*0.95)-rad;
    a = -1*(abs(a*0.9));
    xv = -((tx1 - x)*0.1);
    a -= abs(xv/2);
    liveCount--;
      badPoints3--;
    tRed1 = 255;
    boing1.play();
  }
  if (y+rad >= (ty*0.95) && x+rad >= tx2 && x-rad <= tx2) {
    y = (ty*0.95)-rad;
    a = -1*(abs(a*0.9));
    xv = -((tx2 - x)*0.1);
    a -= abs(xv/2);
    liveCount--;
      badPoints3--;
    tRed2 = 255;
    boing1.play();
  }

if (tRed > 0) {
  tRed -= 5;
}
if (tRed1 > 0) {
  tRed1 -= 5;
}
if (tRed2 > 0) {
  tRed2 -= 5;
}

// randomly generates ground spikes

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
//bgY = -height*0.65; 
/*********************************************************** background */
      mill2 += millis()-mill1;
      } 
      else if (death == 2 && liveCount < 0) {
      died = true;
      scoreBool = true;
//bgY = -height*0.65; /*********************************************************** background */
      mill2 += millis()-mill1;
      } 
    
/******************************** mouse pressed *******************************/

  if (mousePressed && mouseX < width*0.60 && mouseX > width*0.40 && mouseY < height*0.1) {
    died = true;
    //menu();
//bgY = -height*0.65; /*********************************************************** background */
    //mill = millis();  
    mill2 += millis()-mill1; // 75 secs, millis() = (23+75)
    millPause1 = millis();
    pauseCount1++;
}

  if (mousePressed && mouseX <= width*0.1 && mouseY <= height*0.1) {
    reset();
  }

}
