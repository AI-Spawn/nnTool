Boolean right = true;
float counter = 10;
String dir;
int devider = 10;
int fps = 300000;
float startX = 1000;
float x1 = startX;
float x2 = startX;
float x3 = startX;
float x4 = startX;
float x5 = startX;
float x6 = startX;
float x7 = startX;
float x8 = startX;
float x9 = startX;
float x10 = startX;
float beep = 200;
void setup() {
  size(2000, 400);
  startX = width/2;

  randomize();
}
void draw() {
  startX = width/2;

  background(200);

  if (counter > 0) {
    textSize(40);
    text(counter, 200, 40);

    if (right == true) {
      dir = "Right";
      x1 += (calculate(organism1, 1))[0];
      x2 += (calculate(organism2, 1))[0];
      x3 += (calculate(organism3, 1))[0];
      x4 += (calculate(organism4, 1))[0];
      x5 += (calculate(organism5, 1))[0];
      x6 += (calculate(organism6, 1))[0];
      x7 += (calculate(organism7, 1))[0];
      x8 += (calculate(organism8, 1))[0];
      x9 += (calculate(organism9, 1))[0];
      x10 += (calculate(organism10, 1))[0];
    } else {
      dir = "Left";
      x1 += (calculate(organism1, -1))[0];
      x2 += (calculate(organism2, -1))[0];
      x3 += (calculate(organism3, -1))[0];
      x4 += (calculate(organism4, -1))[0];
      x5 += (calculate(organism5, -1))[0];
      x6 += (calculate(organism6, -1))[0];
      x7 += (calculate(organism7, -1))[0];
      x8 += (calculate(organism8, -1))[0];
      x9 += (calculate(organism9, -1))[0];
      x10 += (calculate(organism10, -1))[0];
    }
    
    fill(200, 0, 0);

    rect(x2, 200, 50, 50);
    rect(x3, 200, 50, 50);
    rect(x4, 200, 50, 50);
    rect(x5, 200, 50, 50);
    rect(x6, 200, 50, 50);
    rect(x7, 200, 50, 50);
    rect(x8, 200, 50, 50);
    rect(x9, 200, 50, 50);
    rect(x10, 200, 50, 50);
    fill(0, 200, 0);
    rect(x1, 200, 50, 50);
        fill(200, 0, 0);

    counter -= .025;
  }
  if (counter <= 0) {
    if (right == true) {
      fitness[0] = x1 - startX;
      fitness[1] = x2 - startX;
      fitness[2] = x3 - startX;
      fitness[3] = x4 - startX;
      fitness[4] = x5 - startX;
      fitness[5] = x6 - startX;
      fitness[6] = x7 - startX;
      fitness[7] = x8 - startX;
      fitness[8] = x9 - startX;
      fitness[9] = x10 - startX;
    } else {
      fitness[0] = startX - x1;
      fitness[1] = startX - x2;
      fitness[2] = startX - x3;
      fitness[3] = startX - x4;
      fitness[4] = startX - x5;
      fitness[5] = startX - x6;
      fitness[6] = startX - x7;
      fitness[7] = startX - x8;
      fitness[8] = startX - x9;
      fitness[9] = startX - x10;
    }
    mutate();
    x1 = startX;
    x2 = startX;
    x3 = startX;
    x4 = startX;
    x5 = startX;
    x6 = startX;
    x7 = startX;
    x8 = startX;
    x9 = startX;
    x10 = startX;

    float randomDir = random(-1, 1);
    if (randomDir<=0) {
      right = false;
    } else {
      right = true;
    }

    counter = 10;
  }
  text(dir, width-200, 40);
}
