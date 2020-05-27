void randomize() {
  //Creates random starting weights
  output.println("");
  output.println("");
  output.println("");
  output.println("void randomize() {");
  for (int i = 1; i <= Population; i += 1) {
    //for (int c = 0; c <= coCounter - 2; c += 1) {
    output.println("for(int i = 0; i < " + (coCounter - 1) + "; i += 1){");
    output.println("organism" + i + "[i] = random(-mutationLevel, mutationLevel);");
    output.println("}");
    // }
  }
  output.println("}");
}
