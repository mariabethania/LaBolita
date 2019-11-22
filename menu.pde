
void menu() {

//if (bgY <= 0) { // background control
//bgY += 50;
//}
//if (bgY >= 0) {bgY = 0;}

  //background(bg4);//0, 175, 200);
  //fill(0,0,255,100);
  //strokeWeight(2);
  //stroke(0);
  //rect(width/2,height/2,width*0.65,height*0.6);
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
    } else if (mousePressed && mouseX >= width*0.38 && mouseX <= width*0.62 && mouseY >= height*0.85 && mouseY <= height*0.91) {
        reset();
      } 
      //else if (mousePressed && mouseX >= 0 && mouseX <= width*0.4 && mouseY >= height*0.9 && mouseY <= height*0.96) {
      //  exit();
      //}

}

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
