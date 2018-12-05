 class DNA {

  char[] genes;
 
  float z;
  int i;
  

  DNA(int num) {
    
    
    genes = new char[num];
    for (i = 0; i < genes.length; i++) {
      genes[i] = (char) random(32,128);  
    }
  }
 

  String getPhrase() {
    return new String(genes);
  }
 

  void z (String Equipo) {
     int score = 0;
     for (i = 0; i < genes.length; i++) {
        if (genes[i] == Equipo.charAt(i)) {
          score++;
        }
     }
     z = (float)score / (float)Equipo.length();
  }
 

  DNA crossover(DNA partner) {

    DNA child = new DNA(genes.length);
 
    int midpoint = int(random(genes.length));
 

    for (i = 0; i < genes.length; i++) {
      if (i > midpoint) child.genes[i] = genes[i];
      else              child.genes[i] = partner.genes[i];
    }
    return child;
  }
 

  void mutate(float rango) {
    for (i = 0; i < genes.length; i++) {
      if (random(1) < rango) {
        genes[i] = (char) random(32,128);
      }
    }
  }
}
