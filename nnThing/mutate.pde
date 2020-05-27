String paramsMutate = "";
//TODO: Add breeding feature
void mutate() {
  //for (int i = 1; i <= layerOneCounter -1; i += 1) {
  for (int i = 1; i <= Population - 1; i += 1) {

    paramsMutate = (paramsMutate + "int fitness" + i + ", ");
    lastInput = i;
  }
  // paramsMutate = (paramsMutate + "int fitness" + (lastInput + 1));

  output.println("");
  output.println("");
  output.println("");
  //output.println("void mutate(" + paramsMutate + ") {");
  output.println("void mutate() {");

  //find largest fitness organism
  output.println("maxFit = max(fitness);");
  output.println("for(int c = 0; c <= " + str(Population - 1) + "; c += 1){");
  output.println("if (fitness[c] == maxFit){");
  output.println("fitNum = c + 1;");
  //fitNum is the item in the array, and therefore the number of the organism, with the highest fitness
  output.println("}");
  output.println("}");

  //sets all the organismm equal to the best one
  for (int i = 1; i <= Population; i += 1) {
    output.println("if (fitNum == " + i + "){");
    output.println("holderOrganism = organism" + i + ";");
    output.println("}");
  }

  //for (int i = 1; i <= Population; i += 1) {
  //  output.println("organism" + i + " = holderOrganism;");
  //}

  /////////TODO: MAKE OUTPUT A FOR LOOP
  for (int i = 1; i <= Population; i += 1) {
    /// for (int c = 0; c <= coCounter - 2; c += 1) {
    if (i>1) {
      output.println("for(int i = 0; i <  "+ (coCounter - 1) + "; i += 1){");
      output.println("organism" + i + "[i] = holderOrganism[i] + random(-mutationLevel, mutationLevel);");
      output.println("}");
    } else {
      output.println("for(int i = 0; i <  "+ (coCounter - 1) + "; i += 1){");
      output.println("organism" + i + "[i] = holderOrganism[i];");
      output.println("}");

      // }
    }
  }






  output.println("}");
}
