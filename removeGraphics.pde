void removeGraphics() {
        fill(0,0,255);
        rect(width/2,height/2,width,height*0.1);
        fill(255);
        text("Switching to Low Graphics...",width/2,height/2);
  bg = loadImage("emptyImage.jpg");
  grass1 = loadImage("emptyImage.jpg");
  grass2 = loadImage("emptyImage.jpg");
  rectImg1 = loadImage("emptyImage.jpg");
  rectImg2 = loadImage("emptyImage.jpg");
  mars1 = loadImage("emptyImage.jpg");
  mars2 = loadImage("emptyImage.jpg");
  moon1 = loadImage("emptyImage.jpg");
  moon2 = loadImage("emptyImage.jpg");
  moonBgL = loadImage("emptyImage.jpg");
  moonBgR = loadImage("emptyImage.jpg");
  //earthBall = loadImage("earth_daymap.jpg");
  //marsBall = loadImage("mars.jpg");
  bg.resize(1, 1); // palms background size 
  grass1.resize(1, 1);
  grass2.resize(1, 1);
  rectImg1.resize(1, 1);
  rectImg2.resize(1, 1);
  moon1.resize(1, 1);
  moon2.resize(1,1);
  moonBgL.resize(1, 1);
  moonBgR.resize(1, 1);
  mars1.resize(1, 1);
  mars2.resize(1, 1);
  
}
