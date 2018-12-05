class Gen_pob{
 float rango;           
  DNA[] Gen_pob;            
  ArrayList<DNA> matingPool;    
  String Equipo;                
  int generaciones;              
  boolean finished;             
int perfectScore;
 
  Gen_pob(String p, float m, int num) {
    int i;
    
    Equipo = p;
    rango = m;
    Gen_pob = new DNA[num];
    for (i = 0; i < Gen_pob.length; i++) {
      Gen_pob[i] = new DNA(Equipo.length());
    }
    calculo();
    matingPool = new ArrayList<DNA>();
    finished = false;
    generaciones = 0;
 
    perfectScore = 1;
  }
 

  void calculo() {
    int i;
    for (i = 0; i < Gen_pob.length; i++) {
      Gen_pob[i].z(Equipo);
    }
  }
 

  void Seleccion() {
    float z, maxZ;
    int n, j, i;
    // Clear the ArrayList
    matingPool.clear();
 
    maxZ = 0;
    for (i = 0; i < Gen_pob.length; i++) {
      if (Gen_pob[i].z > maxZ) {
        maxZ = Gen_pob[i].z;
      }
    }
 

    for (i = 0; i < Gen_pob.length; i++) {
 
      z = map(Gen_pob[i].z,0,maxZ,0,1);
      n = int(z * 100);  
      for (j = 0; j < n; j++) {             
        matingPool.add(Gen_pob[i]);
      }
    }
    
    make();
  }
 

  void make() {
    int i, a, b;

    for (i = 0; i < Gen_pob.length; i++) {
      a = int(random(matingPool.size()));
      b = int(random(matingPool.size()));
      DNA partnerA = matingPool.get(a);
      DNA partnerB = matingPool.get(b);
      DNA child = partnerA.crossover(partnerB);
      child.mutate(rango);
      Gen_pob[i] = child;
    }
    generaciones++;
  }
 

  String Obtener() {
    float worldrecord = 0.0f;
    int index = 0;
    for (int i = 0; i < Gen_pob.length; i++) {
      if (Gen_pob[i].z > worldrecord) {
        index = i;
        worldrecord = Gen_pob[i].z;
      }
    }
 
    if (worldrecord == perfectScore ) finished = true;
    return Gen_pob[index].getPhrase();
  }
 
  boolean finished() {
    return finished;
  }
 
  int getGenerations() {
    return generaciones;
  }

  float obtenerZ() {
    float t = 0;
    for (int i = 0; i < Gen_pob.length; i++) {
      t += Gen_pob[i].z;
    }
    return t / (Gen_pob.length);
  }
 
 
}
