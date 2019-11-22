void clouds() {
  //pushMatrix();
  //translate(0, 0, -1);
  noStroke();
  fill(255,100);
  ellipse(cloudX, cloudY, cloudW, cloudH);
  cloudX -= 0.3;
  ellipse(cloudX1, cloudY1, cloudW1, cloudH1);
  cloudX1 -= 0.35;
  ellipse(cloudX2, cloudY2, cloudW2, cloudH2);
  cloudX2 -= 0.4;
  //fill(0, 125, 0);
  //rect(width*0.5, height*0.99, width*1.5, height*0.2);
  //popMatrix();
  //cloudX -= 0.3;
  //cloudX1 -= 0.3;

  if (cloudX <= -cloudW) {
    if (!marsSwitch) {
      cloudH = random(height/30, height/20);
      cloudY = random(height*0.025, height*0.75);
      cloudW = random(width/4,width/2);
      } else if (marsSwitch) {
      cloudH = random(height/30, height/20);
      cloudY = random(height*0.025, height*0.65);
      cloudW = random(width/5,width/3);
    }
    cloudX = (width+cloudW);
  }

  if (cloudX1 <= -cloudW1) {
    if (!marsSwitch) {
      cloudH1 = random(height/30, height/20);
      cloudY1 = random(height*0.025, height*0.75);
      cloudW1 = random(width/5,width/3);
      } else if (marsSwitch) {
      cloudH1 = random(height/30, height/20);
      cloudY1 = random(height*0.025, height*0.65);
      cloudW1 = random(width/5,width/3);
    }
    cloudX1 = (width+cloudW1);
  }

  if (cloudX2 <= -cloudW2) {
    if (!marsSwitch) {
      cloudH2 = random(height/30, height/20);
      cloudY2 = random(height*0.025, height*0.75);
       cloudW2 = random(width/5,width/3);
     } else if (marsSwitch) {
      cloudH2 = random(height/30, height/20);
      cloudY2 = random(height*0.025, height*0.65);
      cloudW2 = random(width/5,width/3);
    }
    cloudX2 = (width+cloudW2);
  }

}
