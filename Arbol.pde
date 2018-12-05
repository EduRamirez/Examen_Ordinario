public class Arbol{
  
  Nodo raiz;
  int j, k;
  
  public Arbol(){
    raiz=null;
    j=0;
    k=0;
  }
  
  public void insertar(int i){ 
    Nodo n = new Nodo(i, j);  
    j=j+1;
    if (raiz==null){
      raiz=n;
    }else{
      Nodo aux= raiz;
      while(aux!=null){
        n.padre=aux;
        if(n.llave>=aux.llave){
          aux=aux.derecha;
        }else{
          aux=aux.izquierda;
        }
      }
      
      if(n.llave< n.padre.llave){
        n.padre.izquierda = n;
      }else{
        n.padre.derecha = n;
      }
    }
  }
  
  public void recorrer(Nodo n){
    if(n!=null){
       recorrer(n.izquierda);
       println("Id="+n.id+" Valor="+n.llave);
       recorrer(n.derecha);      
    }
  }
  
 private class Nodo{
     public Nodo padre;
     public Nodo derecha;
     public Nodo izquierda;
     public int llave;
     public int id;
     
     public Nodo(int indice, int k){
       llave=indice;
       derecha=null;
       izquierda=null;
       padre=null;
       id=k;
    ;     }
  }
}
