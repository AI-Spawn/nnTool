float targetX;
float targetY;
float startX;
float startY;
float maxFit = 0;
float counter = 3;
final int pop = 10;
Player[] players;
final float startWeight = .1;
float mutationLevel = .02;
boolean bestOnly = false;
float[] fitness = new float[pop];
float[] holderOrganism = new float [12];
int gen = 0;
void setup() {
  targetX = random(0, width);
  targetY = random(0, height);

  rectMode(CENTER);
  textSize(40);
  size(1000, 1000);
  startX = width/2;
  startY = height/2;
  players = new Player[pop];
  for (int i = 0; i < pop; i++) {
    players[i] = new Player();
    players[i].x = startX;
    players[i].y = startY;
    players[i].randomize();
  }
}
void draw() {
  delay(1);
  background(200);
  counter -= 0.01;
  if (counter >= 0) {
    for (int i = 1; i < players.length; i++) {
      fill(200, 0, 0);

      players[i].move(players[i].calculate(players[i].x, players[i].y, targetX, targetY));
      if (bestOnly == false) {
        players[i].display();
      }
    }
    fill(0, 200, 0);
    players[1].display();
  }
  if (counter < 0) {
    if (gen >= 3) {
      targetX = random(0, width);
      targetY = random(0, height);
    }
    /*

     if (maxFit > 500) {
     mutationLevel = mutationLevel/1.25;
     }
     }
     if (maxFit < 500) {
     // mutationLevel = mutationLevel * 1.25;
     }
     */

    counter = 3;
    evolve();
  }
  fill(0, 0, 200);
  text(counter, 100, 40);
  text("Generation: " + gen, width - 350, 40);
  rect(targetX, targetY, 25, 25);
  saveFrame("/frames/fraame-####");
}
class Player {
  float accumFit = 0;
  float x;
  float y;
  float pOUT_1 = 0;
  float pOUT_2 = 0;
  float[] organism = new float [12];
  float[] input = new float [4];
  //first layer
  float p1_1;
  float p1_2;
  float p1_3;
  float p1_4;
  //second layer
  float p2_1;
  float p2_2;
  //final layer
  void display() {
    rect(x, y, 50, 50);
  }
  void randomize() {
    for (int i = 0; i < organism.length; i++) {
      organism[i] = random(-startWeight, startWeight);
    }
  }
  public float[] calculate(float in1, float in2, float in3, float in4) {
    pOUT_1 = 0;
    pOUT_2 = 0;
    p1_1 = in1 - in3;
    p1_2 = in2 - in4;
    pOUT_1 += (p1_1 * organism[0]);
    pOUT_1 += (p1_2 * organism[1]);
    pOUT_2 += (p1_1 * organism[2]);
    pOUT_2 += (p1_2 * organism[3]);
    float[] OUT = {pOUT_1, pOUT_2, 0};
    return OUT;
  }
  public float getFitness() {
    //return (1000 - dist(x, y, targetX, targetY));
    return accumFit;
  }
  public float[] getWeights() {
    return organism;
  }
  void move(float[] results) {
    x += results[0];
    y += results[1];
    accumFit += 1000 - dist(x, y, targetX, targetY);
  }
  void resetPos() {
    accumFit = 0;
    x = startX;
    y = startY;
  }
  void mutate() {
    for (int i = 0; i < organism.length; i ++) {
      organism[i] += random(-mutationLevel, mutationLevel);
    }
  }
}
void evolve() {
  delay(10);
  gen += 1;
  for (int i = 0; i < players.length; i++) {
    fitness[i] = players[i].getFitness();
    players[i].resetPos();
  }
  maxFit = max(fitness);

  //  println(maxFit);
  for (int c = 0; c < players.length; c += 1) {
    if (fitness[c] == maxFit) {
      holderOrganism = players[c].getWeights();
    }
  }
  for (int i = 0; i < players.length; i++) {
    // players[i].clone(holderOrganism);
    for (int c = 0; c < players[i].organism.length; c++) {
      players[i].organism[c] = holderOrganism[c];
    }
  }
  for (int i = 1; i < players.length; i++) {
    players[i].mutate();
  }
}
