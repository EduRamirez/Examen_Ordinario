Arbol arbol;

//public class Estructuras{
void setup(){
  ///////////////////////////////////////////////////////
  //Ingrese los valores del arreglo separados por comas//
      int[] x={56, 23, 68, 89, 90, 1, 3, 9};
  //////////////////////////////////////////////////////
  //////////////////////////////////////////////////////
  
  int i=0;
  arbol = new Arbol();
  if(x.length==0){
    println("Ingrese valores en el vector");
    exit();
  }
   for(i=0; i<x.length; i++){
    
    arbol.insertar(x[i]);
   }
    arbol.recorrer(arbol.raiz);
    exit();
  }
