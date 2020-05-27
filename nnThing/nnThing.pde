 //Customizable
int Population = 10;
float mutationLevel = 0.05;


String step = "Perceptron";
int sHeight = 900;
int layerOneCounter = 1;
int layerTwoCounter = 0;
int layerThreeCounter = 0;
int layerFourCounter = 0;
int layerFiveCounter = 0;
int layerSixCounter = 0;
int layerSevenCounter = 0;
int layerEightCounter = 0;
int layerNineCounter = 0;
int layerTenCounter = 0;
int finalCounter = 1;
//Coordinates for lines
int i = 0;
int size = 69;
int[] oneCo = new int [size];
int[] twoCo = new int [size];
int[] threeCo = new int [size];
int[] fourCo = new int [size];
int[] fiveCo = new int [size];
int[] sixCo = new int [size];
int[] sevenCo = new int [size];
int[] eightCo = new int [size];
int[] nineCo = new int [size];
int[] tenCo = new int [size];
int[] finalCo = new int [size];
int coCounter = 0; 



void setup() {
  fileSetup();
  size(1100, 900);
  textSize(25);
}
void draw() {
  oneCo = new int [size];
  twoCo = new int [size];
  threeCo = new int [size];
  fourCo = new int [size];
  fiveCo = new int [size];
  sixCo = new int [size];
  sevenCo = new int [size];
  eightCo = new int [size];
  nineCo = new int [size];
  tenCo = new int [size];
  finalCo = new int [size];
  fill(255);
  background(0);

  //Draw Perceptrons
  coCounter = 0;
  for (int c = 0; c < layerOneCounter; c += 1) {
    ellipse(50, (sHeight/(layerOneCounter +1)*(c+1)), 50, 50);
    oneCo[coCounter] = (sHeight/(layerOneCounter +1)*(c+1));
    coCounter += 1;
  }
  coCounter = 0;
  for (int c = 0; c < layerTwoCounter; c += 1) {
    ellipse(150, (sHeight/(layerTwoCounter +1)*(c+1)), 50, 50);
    twoCo[coCounter] = (sHeight/(layerTwoCounter +1)*(c+1));
    coCounter += 1;
  }
  coCounter = 0;
  for (int c = 0; c < layerThreeCounter; c += 1) {
    ellipse(250, (sHeight/(layerThreeCounter +1)*(c+1)), 50, 50);
    threeCo[coCounter] = (sHeight/(layerThreeCounter +1)*(c+1));
    coCounter += 1;
  }
  coCounter = 0;
  for (int c = 0; c < layerFourCounter; c += 1) {
    ellipse(350, (sHeight/(layerFourCounter +1)*(c+1)), 50, 50);
    fourCo[coCounter] = (sHeight/(layerFourCounter +1)*(c+1));
    coCounter += 1;
  }
  coCounter = 0;
  for (int c = 0; c < layerFiveCounter; c += 1) {
    ellipse(450, (sHeight/(layerFiveCounter +1)*(c+1)), 50, 50);
    fiveCo[coCounter] = (sHeight/(layerFiveCounter +1)*(c+1));
    coCounter += 1;
  }
  coCounter = 0;
  for (int c = 0; c < layerSixCounter; c += 1) {
    ellipse(550, (sHeight/(layerSixCounter +1)*(c+1)), 50, 50);
    sixCo[coCounter] = (sHeight/(layerSixCounter +1)*(c+1));
    coCounter += 1;
  }
  coCounter = 0;
  for (int c = 0; c < layerSevenCounter; c += 1) {
    ellipse(650, (sHeight/(layerSevenCounter +1)*(c+1)), 50, 50);
    sevenCo[coCounter] = (sHeight/(layerSevenCounter +1)*(c+1));
    coCounter += 1;
  }  
  coCounter = 0;
  for (int c = 0; c < layerEightCounter; c += 1) {
    ellipse(750, (sHeight/(layerEightCounter +1)*(c+1)), 50, 50);
    eightCo[coCounter] = (sHeight/(layerEightCounter +1)*(c+1));
    coCounter += 1;
  }  
  coCounter = 0;
  for (int c = 0; c < layerNineCounter; c += 1) {
    ellipse(850, (sHeight/(layerNineCounter +1)*(c+1)), 50, 50);
    nineCo[coCounter] = (sHeight/(layerNineCounter +1)*(c+1));
    coCounter += 1;
  }  
  coCounter = 0;
  for (int c = 0; c < layerTenCounter; c += 1) {
    ellipse(950, (sHeight/(layerTenCounter +1)*(c+1)), 50, 50);
    tenCo[coCounter] = (sHeight/(layerTenCounter +1)*(c+1));
    coCounter += 1;
  }  
  coCounter = 0;
  for (int c = 0; c < finalCounter; c += 1) {
    ellipse(1050, (sHeight/(finalCounter +1)*(c+1)), 50, 50);
    finalCo[coCounter] = (sHeight/(finalCounter +1)*(c+1));
    coCounter += 1;
  }





  ////////////////////////////////////////////////
  //////Display Lines/////////////////////////////
  ////////////////////////////////////////////////

  //draw final layers
  if (layerTwoCounter == 0) {
    i = 0;
  }






  //step display
  fill(200);
  text("Step: " + step, 10, 25);
}






void  keyPressed() {
  //Input to create Perceptrons
  if (step == "Perceptron") {
    if (key == 'n') {
      step = "Creating File...";
    }
    if (key == '1') {
      layerOneCounter += 1;
    }
    if (key == '2' && layerOneCounter >= 1) {
      layerTwoCounter += 1;
    }
    if (key == '3'&& layerTwoCounter >= 1) {
      layerThreeCounter += 1;
    }
    if (key == '4' && layerThreeCounter >= 1) {
      layerFourCounter += 1;
    }
    if (key == '5'&& layerFourCounter >= 1) {
      layerFiveCounter += 1;
    }
    if (key == '6'&& layerFiveCounter >= 1) {
      layerSixCounter += 1;
    }
    if (key == '7'&& layerSixCounter >= 1) {
      layerSevenCounter += 1;
    }
    if (key == '8'&& layerSevenCounter >= 1) {
      layerEightCounter += 1;
    }
    if (key == '9'&& layerEightCounter >= 1) {
      layerNineCounter += 1;
    }
    if (key == '0'&& layerNineCounter >= 1) {
      layerTenCounter += 1;
    }
    if (key == 'l') {
      finalCounter += 1;
    }
  }

  //Draw Connections
  if (step == "Creating File...") {
    createFile();
  }
  if (step == "Done") {
    output.flush(); // Writes the remaining data to the file
    output.close(); // Finishes the file
  }
}
