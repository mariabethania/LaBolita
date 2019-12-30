void loadGraphics() {
        fill(0,0,255);
        rect(width/2,height/2,width,height*0.1);
        fill(255);
        text("Switching to High Graphics...",width/2,height/2);
  graphBool = true;
  //if (graphics) {
  bg = loadImage("backgroundPalmsSmall.png");
  grass1 = loadImage("grassOnlyL.png");
  grass2 = loadImage("grassOnlyR.png");
  rectImg1 = loadImage("skyGrassLarge1.jpg");
  rectImg2 = loadImage("skyGrassLarge2.jpg");
  mars1 = loadImage("Mars4kL.jpg");
  mars2 = loadImage("Mars4kR.jpg");
  moon1 = loadImage("moonSurfaceL.png");
  moon2 = loadImage("moonSurfaceR.png");
  moonBgL = loadImage("earthSpaceL.jpg");
  moonBgR = loadImage("earthSpaceR.jpg");
  earthBall = loadImage("earth_daymap.jpg");
  marsBall = loadImage("mars.jpg");
  //}
//if (graphics) {
  bg.resize(width, height); // palms background size 
  grass1.resize(int(width/0.2049), round(height*0.25));
  grass2.resize(int(width/0.2049), round(height*0.25));
  rectImg1.resize(int(width/0.2049), height);
  rectImg2.resize(int(width/0.2049), height);
  moon1.resize(int(width/0.2049), round(height*0.35));
  moon2.resize(int(width/0.2049), round(height*0.35));
  moonBgL.resize(int(width/0.3075), height);
  moonBgR.resize(int(width/0.3075), height);
  mars1.resize(int(width/0.2049), height);
  mars2.resize(int(width/0.2049), height);
//}
// if (graphics) { 
  moonXl = 0;
  moonXr = int(width/0.3078);
  moonXbgL = 0;
  moonXbgR = int(width/0.3078);
  rectX = 0;
  rectX3 = int(width/0.2052);
  rectX1 = 0;//width-int(width/0.2052);
  rectX2 = int(width/0.2052);//width-3840;
  rectY = 0;
  bgY = 0;

rectX2052 = ((int(width/0.2052)*2)-width);
moonXbg3078 = ((int(width/0.3078)*2)-width);
grassHeight = height*0.8;
moonHeight = height*0.65;
 }
//}
