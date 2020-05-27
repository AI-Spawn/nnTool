PrintWriter output;
void fileSetup(){
   output = createWriter("output.txt");
}
void createFile(){
  coCounter = 0;
  //Preceptron Style p[Layer]_[Height]
  //Weight Style: w[Layer1]_[Height1]_[Layer2]_{Height2]
  //////////////////////////////
  ////Perceptron/Wieght Variables//////
  //////////////////////////////
  for(int c = 1; c <= layerOneCounter; c += 1){
    output.println("float p1_" + c + ";");
  }
  for(int c = 1; c <= layerTwoCounter; c += 1){
    output.println("float p2_" + c + ";");
  }
  for(int c = 1; c <= layerThreeCounter; c += 1){
    output.println("float p3_" + c + ";");
  }
  for(int c = 1; c <= layerFourCounter; c += 1){
    output.println("float p4_" + c + ";");
  }
  for(int c = 1; c <= layerFiveCounter; c += 1){
    output.println("float p5_" + c + ";");
  }
  for(int c = 1; c <= layerSixCounter; c += 1){
    output.println("float p6_" + c + ";");
  }
  for(int c = 1; c <= layerSevenCounter; c += 1){
    output.println("float p7_" + c + ";");
  }
  for(int c = 1; c <= layerEightCounter; c += 1){
    output.println("float p8_" + c + ";");
  }
  for(int c = 1; c <= layerNineCounter; c += 1){
    output.println("float p9_" + c + ";");
  }
  for(int c = 1; c <= layerTenCounter; c += 1){
    output.println("float p10_" + c + ";");
  }
  for(int c = 1; c <= finalCounter; c += 1){
    output.println("float pOUT_" + c + ";");
  }
  /////////////////////////////
  //////Weight Vaiables////////
  /////////////////////////////
  
  
  step = "Done";
}
