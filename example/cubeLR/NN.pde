float maxFit;
int fitNum = 0;
float[] fitness = new float [10];
float mutationLevel = 0.7;
//Preceptron Style p[Layer]_[Height]
//Weight Style: w[Layer1]_[Height1]_[Layer2]_{Height2]
//Weights and Perceptrons

//Input Layer
float p1_1;

//Layer 2

//Layer 3

//Layer 4

//Layer 5

//Layer 6

//Layer 7

//Layer 8

//Layer 9

//Layer 10


//OUTPUT LAYER
float pOUT_1 = 0;


//Declares Arrays for organism weights
float[] holderOrganism = new float [1];
float[] organism1 = new float[1];
float[] organism2 = new float[1];
float[] organism3 = new float[1];
float[] organism4 = new float[1];
float[] organism5 = new float[1];
float[] organism6 = new float[1];
float[] organism7 = new float[1];
float[] organism8 = new float[1];
float[] organism9 = new float[1];
float[] organism10 = new float[1];



void randomize() {
  organism1[0] = random(-1, 1);
  organism2[0] = random(-1, 1);
  organism3[0] = random(-1, 1);
  organism4[0] = random(-1, 1);
  organism5[0] = random(-1, 1);
  organism6[0] = random(-1, 1);
  organism7[0] = random(-1, 1);
  organism8[0] = random(-1, 1);
  organism9[0] = random(-1, 1);
  organism10[0] = random(-1, 1);
}



public float[] calculate(float[] organism, int input1) {
  pOUT_1 = 0;
  float p1_1 = input1;
  pOUT_1 += (p1_1 * organism[0]);
  float[] OUT = {pOUT_1, 0};
  return OUT;
}



void mutate() {
  maxFit = max(fitness);
  println(maxFit);
  for (int c = 0; c <= 9; c += 1) {
    if (fitness[c] == maxFit) {
      fitNum = c + 1;
    }
  }
  if (fitNum == 1) {
    holderOrganism = organism1;
  }
  if (fitNum == 2) {
    holderOrganism = organism2;
  }
  if (fitNum == 3) {
    holderOrganism = organism3;
  }
  if (fitNum == 4) {
    holderOrganism = organism4;
  }
  if (fitNum == 5) {
    holderOrganism = organism5;
  }
  if (fitNum == 6) {
    holderOrganism = organism6;
  }
  if (fitNum == 7) {
    holderOrganism = organism7;
  }
  if (fitNum == 8) {
    holderOrganism = organism8;
  }
  if (fitNum == 9) {
    holderOrganism = organism9;
  }
  if (fitNum == 10) {
    holderOrganism = organism10;
  }
  organism1[0] = holderOrganism[0];
  organism2[0] = holderOrganism[0] + random(-mutationLevel, mutationLevel);
  organism3[0] = holderOrganism[0] + random(-mutationLevel, mutationLevel);
  organism4[0] = holderOrganism[0] + random(-mutationLevel, mutationLevel);
  organism5[0] = holderOrganism[0] + random(-mutationLevel, mutationLevel);
  organism6[0] = holderOrganism[0] + random(-mutationLevel, mutationLevel);
  organism7[0] = holderOrganism[0] + random(-mutationLevel, mutationLevel);
  organism8[0] = holderOrganism[0] + random(-mutationLevel, mutationLevel);
  organism9[0] = holderOrganism[0] + random(-mutationLevel, mutationLevel);
  organism10[0] = holderOrganism[0] + random(-mutationLevel, mutationLevel);
}
