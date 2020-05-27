//TODO: Use for loops in the  generated code
int lastInput;
int arrayCounter = 0;
String out = "";
void calculate() {

  output.println("");
  output.println("");
  output.println("");
  output.println("float sigmoid(float x){");
  output.println("return 1.0/(1.0 + exp(-10.0 * (x - 0.5)));");
  output.println("}");
  output.println("public float[] calculate(float[] organism) {");
  //set perceptron to 0
  for (int c = 1; c <= layerTwoCounter; c += 1) {
    output.println("p2_" + c + " = 0;");
  }
  for (int c = 1; c <= layerThreeCounter; c += 1) {
    output.println("p3_" + c + " = 0;");
  }
  for (int c = 1; c <= layerFourCounter; c += 1) {
    output.println("p4_" + c + " = 0;");
  }
  for (int c = 1; c <= layerFiveCounter; c += 1) {
    output.println("p5_" + c + " = 0;");
  }
  for (int c = 1; c <= layerSixCounter; c += 1) {
    output.println("p6_" + c + " = 0;");
  }
  for (int c = 1; c <= layerSevenCounter; c += 1) {
    output.println("p7_" + c + " = 0;");
  }
  for (int c = 1; c <= layerEightCounter; c += 1) {
    output.println("p8_" + c + " = 0;");
  }
  for (int c = 1; c <= layerNineCounter; c += 1) {
    output.println("p9_" + c + " = 0;");
  }
  for (int c = 1; c <= layerTenCounter; c += 1) {
    output.println("p10_" + c + " = 0;");
  }
  for (int c = 1; c <= finalCounter; c += 1) {
    output.println("pOUT_" + c + " = 0;");
  }


  for (int c = 1; c <= layerOneCounter; c += 1) {
    output.println("p1_" + c + " = input[" + (c - 1) + "];");
  }



  for (int c = 1; c <= layerTwoCounter; c += 1) {
    for (int d = 1; d <= layerOneCounter; d += 1) {
      output.println("p2_" + c + " += (p1_" + d + " * organism[" + arrayCounter + "]);");
      arrayCounter += 1;
    }
    output.println("p2_" + c + " = sigmoid(p2_ "+ c + ");");
  }
  for (int c = 1; c <= layerThreeCounter; c += 1) {
    for (int d = 1; d <= layerTwoCounter; d += 1) {
      output.println("p3_" + c + " += (p2_" + d + " * organism[" + arrayCounter + "]);");
      arrayCounter += 1;
    }
    output.println("p3_" + c + " = sigmoid(p3_ "+ c + ");");
  }
  for (int c = 1; c <= layerFourCounter; c += 1) {
    for (int d = 1; d <= layerThreeCounter; d += 1) {
      output.println("p4_" + c + " += (p3_" + d + " * organism[" + arrayCounter + "]);");
      arrayCounter += 1;
    }
    output.println("p4_" + c + " = sigmoid(p4_ "+ c + ");");
  }
  for (int c = 1; c <= layerFiveCounter; c += 1) {
    for (int d = 1; d <= layerFourCounter; d += 1) {
      output.println("p5_" + c + " += (p4_" + d + " * organism[" + arrayCounter + "]);");
      arrayCounter += 1;
    }
    output.println("p5_" + c + " = sigmoid(p5_ "+ c + ");");
  }
  for (int c = 1; c <= layerSixCounter; c += 1) {
    for (int d = 1; d <= layerFiveCounter; d += 1) {
      output.println("p6_" + c + " += (p5_" + d + " * organism[" + arrayCounter + "]);");
      arrayCounter += 1;
    }
    output.println("p6_" + c + " = sigmoid(p6_ "+ c + ");");
  }
  for (int c = 1; c <= layerSevenCounter; c += 1) {
    for (int d = 1; d <= layerSixCounter; d += 1) {
      output.println("p7_" + c + " += (p6_" + d + " * organism[" + arrayCounter + "]);");
      arrayCounter += 1;
    }
    output.println("p7_" + c + " = sigmoid(p7_ "+ c + ");");
  }
  for (int c = 1; c <= layerEightCounter; c += 1) {
    for (int d = 1; d <= layerSevenCounter; d += 1) {
      output.println("p8_" + c + " += (p7_" + d + " * organism[" + arrayCounter + "]);");
      arrayCounter += 1;
    }
  }
  for (int c = 1; c <= layerNineCounter; c += 1) {
    for (int d = 1; d <= layerEightCounter; d += 1) {
      output.println("p9_" + c + " += (p8_" + d + " * organism[" + arrayCounter + "]);");
      arrayCounter += 1;
    }
    output.println("p8_" + c + " = sigmoid(p8_ "+ c + ");");
  }
  for (int c = 1; c <= layerTenCounter; c += 1) {
    for (int d = 1; d <= layerNineCounter; d += 1) {
      output.println("p10_" + c + " += (p9_" + d + " * organism[" + arrayCounter + "]);");
      arrayCounter += 1;
    }
    output.println("p9_" + c + " = sigmoid(p9_ "+ c + ");");
  }
  for (int c = 1; c <= finalCounter; c += 1) {
    for (int d = 1; d <= hCo; d += 1) {
      output.println("pOUT_" + c + " += (p" + finalHidden + "_" + d + " * organism[" + arrayCounter + "]);");
      arrayCounter += 1;
    }
    output.println("pOUT_" + c + " = sigmoid(pOUT_"+ c + ");");

    out = (out + ("pOUT_" + c + ", "));
  }
  //TODO: Don't be this lazy, take outt the zero;
  out = out + "0";
  output.println("float[] OUT = {" + out + "};");
  output.println("return OUT;");
  output.println("}");
}
