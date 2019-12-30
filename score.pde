void score() {
  if (bgY <= 0) { // background control
    bgY += 50;
  }
  if (bgY >= 0) {
    bgY = 0;
  }

// this function displays font shadows
  scoreShadows();
  fill(255, 175, 0);
  textAlign(CENTER, CENTER);
  //textFont(myFont2,64);
  textSize(height*0.09143);
  text("La Bolita", width*0.5, height*0.16);
  // ball
  pushMatrix();
  translate(x, y, z);
  rotateY(yRotate);
  rotateX(xRotate);
  if (boolBall && boolVolley) {
    shape(sBall);
  } else if (!boolBall && !boolVolley) {
    shape(bBall);
  } else if (boolVolley && !boolBall) {
    shape(vBall);
  }
  popMatrix();

  // good points
  fill(0, 0, 255, 75);
  ellipse(width*0.5, height*0.45, width*0.75, height*0.15);
  fill(255, 0, 0);
  textSize(height*0.06857);
  text(liveCount, width/2, height*0.44);
  textAlign(LEFT, CENTER);
  textSize(height*0.05143);
  fill(255, 150, 0);
  pushMatrix();
  translate(width*0.45, height*0.55, bRad);
  rotateY(yRotate);
  rotateZ(zRotate);
  strokeWeight(1);
  stroke(red, 0, blue, trans);
  box(bRad*0.5);
  popMatrix();
  text("  "+plusPoints1, width*0.5, height*0.55);

  pushMatrix();
  translate(width*0.45, height*0.62, bRad);
  rotateZ(zRotate);
  rotateX(xRotate);
  fill(random(200, 255), random(255), random(255));
  box(bRad*0.5);
  popMatrix();
  text("  "+plusPoints2, width*0.5, height*0.63);

  // blue box icon
  noStroke();
  fill(0);
  ellipse((width*0.445), height*0.717, (bRad*1.27)*0.6, (bRad*1.27)*0.6);
  fill(0, 0, blue);
  rect((width*0.445), height*0.717, bRad*0.6, bRad*0.6);
  text("  "+badPoints1, width*0.5, height*0.71);
  fill(0);
  ellipse((width*0.445), height*0.717, (bRad)*0.6, (bRad)*0.6);

  // red box icon
  if (go2) {
    fill(0);
    ellipse((width*0.445)-rad, height*0.717, (bRad*1.27)*0.6, (bRad*1.27)*0.6);
    fill(red, 0, 0);
    rect((width*0.445)-rad, height*0.717, bRad*0.6, bRad*0.6);
    fill(0);
    ellipse((width*0.445)-rad, height*0.717, (bRad)*0.6, (bRad)*0.6);
  }
  // green box icon
  if (go3) {
    fill(0);
    ellipse((width*0.445)-(rad*2), height*0.717, (bRad*1.27)*0.6, (bRad*1.27)*0.6);
    fill(0, green, 0);
    rect((width*0.445)-(rad*2), height*0.717, bRad*0.6, bRad*0.6);
    fill(0);
    ellipse((width*0.445)-(rad*2), height*0.717, (bRad)*0.6, (bRad)*0.6);
  }
  // violet box icon
  if (go4) {
    fill(0);
    ellipse((width*0.445)-(rad*3), height*0.717, (bRad*1.27)*0.6, (bRad*1.27)*0.6);
    fill(red, 0, blue);
    rect((width*0.445)-(rad*3), height*0.717, bRad*0.6, bRad*0.6);
    fill(0);
    ellipse((width*0.445)-(rad*3), height*0.717, (bRad)*0.6, (bRad)*0.6);
  }
  // light blue box icon
  if (go5) {
    fill(0);
    ellipse((width*0.445)-(rad*4), height*0.717, (bRad*1.27)*0.6, (bRad*1.27)*0.6);
    fill(0, green, blue);
    rect((width*0.445)-(rad*4), height*0.717, bRad*0.6, bRad*0.6);
    fill(0);
    ellipse((width*0.445)-(rad*4), height*0.717, (bRad)*0.6, (bRad)*0.6);
  }
  // black box
  pushMatrix();
  translate(width*0.45, height*0.775, bRad);
  fill(0);
  rotateX(0.3);
  box(bRad*0.52);
  rotateY(yRotate);
  shape(hazardIcon);
  popMatrix();
  fill(255, 255, 0);
  text("  "+badPoints2, width*0.5, height*0.79);
  // triangles
  fill(0, 255, 0);
  triangle(width*0.445, height*0.86, (width*0.445)-base, (height*0.86)+(rad*0.7), (width*0.445)+base, (height*0.86)+(rad*0.7));
  text("  "+badPoints3, width*0.5, height*0.87);
  // Menu link
  fill(255, 255, 0);
  textAlign(LEFT, CENTER);
  text("< Menu", 0, height*0.93);
  textAlign(RIGHT, BOTTOM);

  if (death == 1 && (badPoints1 < 0 || badPoints2 < 0 || badPoints3 < 0)) {
    //boing2.play();
    fill(0, 75, 100);
    strokeWeight(3);
    stroke(255, 0, 150);
    rect(width/2, height*0.29, width*0.6, height*0.15);
    textAlign(CENTER, CENTER);
    fill(0, trans);
    text("OH SNAP!!!", width*0.502, height*0.254);
    text("You just died", width*0.502, height*0.314);
    fill(255, 255, 0);
    text("OH SNAP!!!", width*0.5, height*0.252);
    text("You just died", width*0.5, height*0.312);
  } else if (death == 2 && liveCount < 0) {
    //boing2.play();
    fill(0, 75, 100);
    //strokeWeight(3);
    stroke(255, 0, 150);
    rect(width/2, height*0.29, width*0.82, height*0.15);
    textAlign(CENTER, CENTER);
    fill(0, trans);
    text("Told ya!", width*0.502, height*0.254);
    text("Keep it above zero", width*0.502, height*0.314);
    fill(255, 255, 0);
    text("Told ya!", width*0.5, height*0.252);
    text("Keep it above zero", width*0.5, height*0.312);
  } 
  textSize(height*0.03);
  if (start > 0) {
    textAlign(RIGHT, TOP);
    text("Since start =", width/2, height*0.01);
    textAlign(LEFT, TOP);
    text(" "+((((millis()-start)/1000)) / 3600)+"h, "+((((millis()-start)/1000)/60) % 60)+"m, "+(((millis()-start)/1000) % 60)+"s", width/2, height*0.01);
  }
  textAlign(RIGHT, TOP);
  text("Time played =", width/2, height*0.04);
  text("Paused x "+pauseCount1+" =", width/2, height*0.07);
  textAlign(LEFT, TOP);
  text(" "+(((mill2/1000)) / 3600)+"h, "+(((mill2/1000)/60) % 60)+"m, "+((mill2/1000) % 60)+"s", width/2, height*0.04);
  if (millPause1 > 0) {
    textAlign(LEFT, TOP);
    text(" "+(((((millis() - millPause1)+mill)/1000)) / 3600)+"h, "+(((((millis() - millPause1)+mill)/1000)/60) % 60)+"m, "+((((millis() - millPause1)+mill)/1000) % 60)+"s", width/2, height*0.07);
  }
}

void scoreShadows() {
  pushMatrix();
  textAlign(CENTER, CENTER);
  textSize(height*0.05143);
  if (moonSwitch) {
    fill(255, 150);
  } else if (!moonSwitch && ! marsSwitch) {
    fill(0, 0, 255, 150);
  } else {
    fill(255, 150);
  }

  if (death == 1) {
    text("Sudden Death", width/2, height*0.44);
  } else if (death == 2) {
    text("Death Below Zero", width/2, height*0.44);
  } else if (death == 3) {
    text("No Dying here", width/2, height*0.44);
  }

  translate(3, 3, 0);
  fill(0);
  textSize(height*0.09143);
  text("La Bolita", width*0.5, height*0.16);
  translate(-1, -1, 0);
  textSize(height*0.06957);
  text(liveCount, width/2, height*0.44);
  textAlign(LEFT, CENTER);
  textSize(height*0.05143);
  text("  "+plusPoints1, width*0.5, height*0.55);
  text("  "+plusPoints2, width*0.5, height*0.63);
  text("  "+badPoints1, width*0.5, height*0.71);
  text("  "+badPoints2, width*0.5, height*0.79);
  text("  "+badPoints3, width*0.5, height*0.87);
  text("< Menu", 0, height*0.93);
  textAlign(RIGHT, BOTTOM);
  textAlign(CENTER, TOP);
  textSize(height*0.03);
  //text("Time played = "+((hr2+int(min2/60)) % 60)+"h, "+((min2+int(sec2/60)) % 60)+"m, "+(sec2 % 60)+"s",width*0.5,0);
  if (start > 0) {
    textAlign(RIGHT, TOP);
    text("Since start =", width/2, height*0.01);
    textAlign(LEFT, TOP);
    text(" "+((((millis()-start)/1000)) / 3600)+"h, "+((((millis()-start)/1000)/60) % 60)+"m, "+(((millis()-start)/1000) % 60)+"s", width/2, height*0.01);
  }
  textAlign(RIGHT, TOP);
  text("Time played =", width/2, height*0.04);
  text("Paused x "+pauseCount1+" =", width/2, height*0.07);
  textAlign(LEFT, TOP);
  text(" "+(((mill2/1000)) / 3600)+"h, "+(((mill2/1000)/60) % 60)+"m, "+((mill2/1000) % 60)+"s", width/2, height*0.04);
  if (millPause1 > 0) {
    textAlign(LEFT, TOP);
    text(" "+(((((millis() - millPause1)+mill)/1000)) / 3600)+"h, "+(((((millis() - millPause1)+mill)/1000)/60) % 60)+"m, "+((((millis() - millPause1)+mill)/1000) % 60)+"s", width/2, height*0.07);
  }
  popMatrix();
}
