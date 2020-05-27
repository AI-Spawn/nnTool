float targetX;
float targetY;
float startX;
float startY;

float x1;
float y1;
float x2;
float y2;
float x3;
float y3;
float x4;
float y4;
float x5;
float y5;
float x6;
float y6;
float x7;
float y7;
float x8;
float y8;
float x9;
float y9;
float x10;
float y10;
float counter = 0;
float fps = 60;
Boolean first = true;

void setup() {
  rectMode(CENTER);
  textSize(40);
  frameRate(30);
  size(1000, 1000);
  startX = width/2;
  startY = height/2;
  targetX = random(10, width-10);
  targetY = random(10, height-10);
  randomize();
}
void draw() {

  background(200);
  fill(0);
  text(counter, 100, 40);

  if (counter > 0) {

    counter -= (1/(fps/2));




    input[0] = targetX - x1;
    input[1] = targetY - y1;
    x1 += (calculate(organism1))[0];
    y1 += (calculate(organism1))[1];
    input[0] = targetX - x2;
    input[1] = targetY - y2;
    x2 += (calculate(organism2))[0];
    y2 += (calculate(organism2))[1];
    input[0] = targetX - x3;
    input[1] = targetY - y3;
    x3 += (calculate(organism3))[0];
    y3 += (calculate(organism3))[1];
    input[0] = targetX - x4;
    input[1] = targetY - y4;
    x4 += (calculate(organism4))[0];
    y4 += (calculate(organism4))[1];
    input[0] = targetX - x5;
    input[1] = targetY - y5;
    x5 += (calculate(organism5))[0];
    y5 += (calculate(organism5))[1];
    input[0] = targetX - x6;
    input[1] = targetY - y6;
    x6 += (calculate(organism6))[0];
    y6 += (calculate(organism6))[1];
    input[0] = targetX - x7;
    input[1] = targetY - y7;
    x7 += (calculate(organism7))[0];
    y7 += (calculate(organism7))[1];
    input[0] = targetX - x8;
    input[1] = targetY - y8;
    x8 += (calculate(organism8))[0];
    y8 += (calculate(organism8))[1];
    input[0] = targetX - x9;
    input[1] = targetY - y9;
    x9 += (calculate(organism9))[0];
    y9 += (calculate(organism9))[1];
    input[0] = targetX - x10;
    input[1] = targetY - y10;
    x10 += (calculate(organism10))[0];
    y10 += (calculate(organism10))[1];





    fill(200, 0, 0);
    rect(x2, y2, 50, 50);
    rect(x3, y3, 50, 50);
    rect(x4, y4, 50, 50);
    rect(x5, y5, 50, 50);
    rect(x6, y6, 50, 50);
    rect(x7, y7, 50, 50);
    rect(x8, y8, 50, 50);
    rect(x9, y9, 50, 50);
    rect(x10, y10, 50, 50);
    fill(0, 200, 0);
    rect(x1, y1, 50, 50);

    fill(200, 0, 0);
    fill(0, 0, 200);
    rect(targetX, targetY, 25, 25);
  }
  if (counter <= 0) {

    // targetX = random(10, width-10);
    //targetY = random(10, height-10);

    counter = 3;
    for (int i = 0; i < 10; i += 1) {
      fitness[i] = 0;
    }

    //code not accuaty addin these value to the list???
    fitness[0] = 0- dist(x1, y1, targetX, targetY);

    fitness[1] = 1000-dist(x2, y2, targetX, targetY);
    fitness[2] =1000 - dist(x3, y3, targetX, targetY);
    fitness[3] =1000 - dist(x4, y4, targetX, targetY);
    fitness[4] =1000 - dist(x5, y5, targetX, targetY);
    fitness[5] =1000 - dist(x6, y6, targetX, targetY);
    fitness[6] =1000 - dist(x7, y7, targetX, targetY);
    fitness[7] =1000 - dist(x8, y8, targetX, targetY);
    fitness[8] =1000 - dist(x9, y9, targetX, targetY);
    fitness[9] = 1000 - dist(x10, y10, targetX, targetY);
    if (first == false) {
      mutate();
    }
    if (maxFit >= 999.99) {
      targetX = random(10, width-10);
      targetY = random(10, height-10);
    }
    x1 = startX;
    y1 = startY;
    x2 = startX;
    y2 = startY;
    x3 = startX;
    y3 = startY;
    x4 = startX;
    y4 = startY;
    x5 = startX;
    y5 = startY;
    x6 = startX;
    y6 = startY;
    x7 = startX;
    y7 = startY;
    x8 = startX;
    y8 = startY;
    x9 = startX;
    y9 = startY;
    x10 = startX;
    y10 = startY;
    //  mutationLevel = mutationLevel/1.4;
    first = false;
  }
  //saveFrame("/frames/####.png");
}
