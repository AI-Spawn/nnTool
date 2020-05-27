float maxFit;
int fitNum = 0;
float[] fitness = new float [10];
float[] input = new float [2];
float mutationLevel = 0.05;
//Preceptron Style p[Layer]_[Height]
//Weight Style: w[Layer1]_[Height1]_[Layer2]_{Height2]
//Weights and Perceptrons

//Input Layer
float p1_1;
float p1_2;

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
float pOUT_2 = 0;


//Declares Arrays for organism weights
float[] holderOrganism = new float [5];
float[] organism1 = new float[5];
float[] organism2 = new float[5];
float[] organism3 = new float[5];
float[] organism4 = new float[5];
float[] organism5 = new float[5];
float[] organism6 = new float[5];
float[] organism7 = new float[5];
float[] organism8 = new float[5];
float[] organism9 = new float[5];
float[] organism10 = new float[5];



void randomize() {
  for (int i = 0; i < 5; i += 1) {
    organism1[i] = random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i < 5; i += 1) {
    organism2[i] = random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i < 5; i += 1) {
    organism3[i] = random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i < 5; i += 1) {
    organism4[i] = random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i < 5; i += 1) {
    organism5[i] = random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i < 5; i += 1) {
    organism6[i] = random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i < 5; i += 1) {
    organism7[i] = random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i < 5; i += 1) {
    organism8[i] = random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i < 5; i += 1) {
    organism9[i] = random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i < 5; i += 1) {
    organism10[i] = random(-mutationLevel, mutationLevel);
  }
}



float sigmoid(float x) {
  return 1.0/(1.0 + exp(-10.0 * (x - 0.5)));
}
public float[] calculate(float[] organism) {
  pOUT_1 = 0;
  pOUT_2 = 0;
  p1_1 = input[0];
  p1_2 = input[1];
  pOUT_1 += (p1_1 * organism[0]);
  pOUT_1 += (p1_2 * organism[1]);
  pOUT_2 += (p1_1 * organism[2]);
  pOUT_2 += (p1_2 * organism[3]);
  float[] OUT = {pOUT_1, pOUT_2, 0};
  return OUT;
}



void mutate() {
  maxFit = max(fitness);
  println("MaxFit: " + maxFit);
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
  for (int i = 0; i <  5; i += 1) {
    organism1[i] = holderOrganism[i];
  }
  for (int i = 0; i <  5; i += 1) {
    organism2[i] = holderOrganism[i] + random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i <  5; i += 1) {
    organism3[i] = holderOrganism[i] + random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i <  5; i += 1) {
    organism4[i] = holderOrganism[i] + random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i <  5; i += 1) {
    organism5[i] = holderOrganism[i] + random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i <  5; i += 1) {
    organism6[i] = holderOrganism[i] + random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i <  5; i += 1) {
    organism7[i] = holderOrganism[i] + random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i <  5; i += 1) {
    organism8[i] = holderOrganism[i] + random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i <  5; i += 1) {
    organism9[i] = holderOrganism[i] + random(-mutationLevel, mutationLevel);
  }
  for (int i = 0; i <  5; i += 1) {
    organism10[i] = holderOrganism[i] + random(-mutationLevel, mutationLevel);
  }
}
