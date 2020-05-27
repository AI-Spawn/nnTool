PrintWriter output;
int finalHidden = 0;
int hCo; //hidden counter

void fileSetup() {
  output = createWriter("output.txt");
  output.println("float maxFit;");
  output.println("int fitNum = 0;");
  output.println("float[] fitness = new float [" + str(Population) + "];");
}
void createFile() {
  output.println("float[] input = new float [" + layerOneCounter + "];");

  if (layerNineCounter > 0) {
    finalHidden = 9;
    hCo = layerNineCounter;
  } else if (layerEightCounter > 0) {
    finalHidden = 8;
    hCo = layerEightCounter;
  } else if (layerSevenCounter > 0) {
    finalHidden = 7;
    hCo = layerSevenCounter;
  } else if (layerSixCounter > 0) {
    finalHidden = 6;
    hCo = layerSixCounter;
  } else if (layerFiveCounter > 0) {
    finalHidden = 5;
    hCo = layerFiveCounter;
  } else if (layerFourCounter > 0) {
    finalHidden = 4;
    hCo = layerFourCounter;
  } else if (layerThreeCounter > 0) {
    finalHidden = 3;
    hCo = layerThreeCounter;
  } else if (layerTwoCounter > 0) {
    finalHidden = 2;
    hCo = layerTwoCounter;
  } else {
    finalHidden = 1;
    hCo = layerOneCounter;
  }
  coCounter = 0;
  output.println("float mutationLevel = " + mutationLevel + ";");
  output.println("//Preceptron Style p[Layer]_[Height]");
  output.println("//Weight Style: w[Layer1]_[Height1]_[Layer2]_{Height2]");
  output.println("//Weights and Perceptrons");
  //Preceptron Style p[Layer]_[Height]
  //Weight Style: w[Layer1]_[Height1]_[Layer2]_{Height2]
  ///////////////////////////////////////
  //////Perceptron/Wieght Variables//////
  ///////////////////////////////////////
  output.println("");
  output.println("//Input Layer");
  for (int c = 1; c <= layerOneCounter; c += 1) {
    output.println("float p1_" + c + ";");
    for (int d = 1; d <= layerTwoCounter; d += 1) {
      //output.println("float w1_" + c + "_2_" + d + ";");
      coCounter += 1;
    }
  }
  output.println("");
  output.println("//Layer 2");
  for (int c = 1; c <= layerTwoCounter; c += 1) {
    output.println("float p2_" + c + ";");
    for (int d = 1; d <= layerThreeCounter; d += 1) {
      //output.println("float w2_" + c + "_3_" + d + ";");
      coCounter += 1;
    }
  }
  output.println("");
  output.println("//Layer 3");
  for (int c = 1; c <= layerThreeCounter; c += 1) {
    output.println("float p3_" + c + ";");
    for (int d = 1; d <= layerFourCounter; d += 1) {
      //output.println("float w3_" + c + "_4_" + d + ";");
      coCounter += 1;
    }
  }
  output.println("");
  output.println("//Layer 4");

  for (int c = 1; c <= layerFourCounter; c += 1) {
    output.println("float p4_" + c + ";");
    for (int d = 1; d <= layerFiveCounter; d += 1) {
      //output.println("float w4_" + c + "_5_" + d + ";");
      coCounter += 1;
    }
  }
  output.println("");
  output.println("//Layer 5");
  for (int c = 1; c <= layerFiveCounter; c += 1) {
    output.println("float p5_" + c + ";");
    for (int d = 1; d <= layerSixCounter; d += 1) {
      //output.println("float w5_" + c + "_6_" + d + ";");
      coCounter += 1;
    }
  }
  output.println("");
  output.println("//Layer 6");
  for (int c = 1; c <= layerSixCounter; c += 1) {
    output.println("float p6_" + c + ";");
    for (int d = 1; d <= layerSevenCounter; d += 1) {
      //output.println("float w6_" + c + "_7_" + d + ";");
      coCounter += 1;
    }
  }
  output.println("");
  output.println("//Layer 7");
  for (int c = 1; c <= layerSevenCounter; c += 1) {
    output.println("float p7_" + c + ";");
    for (int d = 1; d <= layerEightCounter; d += 1) {
      //output.println("float w7_" + c + "_8_" + d + ";");
      coCounter += 1;
    }
  }
  output.println("");
  output.println("//Layer 8");
  for (int c = 1; c <= layerEightCounter; c += 1) {
    output.println("float p8_" + c + ";");
    for (int d = 1; d <= layerNineCounter; d += 1) {
      //output.println("float w8_" + c + "_9_" + d + ";");
      coCounter += 1;
    }
  }
  output.println("");
  output.println("//Layer 9");
  for (int c = 1; c <= layerNineCounter; c += 1) {
    output.println("float p9_" + c + ";");
    for (int d = 1; d <= layerTenCounter; d += 1) {
      //output.println("float w9_" + c + "_10_" + d + ";");
      coCounter += 1;
    }
  }
  output.println("");
  output.println("//Layer 10");
  for (int c = 1; c <= layerTenCounter; c += 1) {
    output.println("float p10_" + c + ";");
    for (int d = 1; d <= finalCounter; d += 1) {
      //output.println("float w10_" + c + "_11_" + d + ";");
      coCounter += 1;
    }
  }
  //Last Weights
  output.println("");
  if (finalHidden != 0) {
    for (int c = 1; c <= hCo; c += 1) {
      for (int d = 1; d <= finalCounter; d += 1) {
        //output.println("float w" + finalHidden + "_" + c + "_11_" + d + ";");
        coCounter += 1;
      }
    }
  }

  output.println("");
  output.println("//OUTPUT LAYER");
  for (int c = 1; c <= finalCounter; c += 1) {
    output.println("float pOUT_" + c + " = 0;");
    coCounter += 1;
  }
  output.println("");
  output.println("");
  output.println("//Declares Arrays for organism weights");
  output.println("float[] holderOrganism = new float [" + (coCounter - 1) + "];");
  for (int i = 1; i <= Population; i += 1) {
    output.println("float[] organism" + i + " = new float[" + (coCounter - 1) + "];");
  }

  randomize();
  calculate();
  mutate();
  step = "Done";
}
