Gen_pob Gen_pob;

//Variables
int pm;
float rango;
String Equipo;

 
void setup() {
  
  Equipo = "1619697/1719482"; //Se le da el valor de la frase a la cual se quiere llegar
  pm= 300;
  rango = 0.001;
   Gen_pob = new Gen_pob(Equipo, rango, pm);  //Se crea un nuevo nodo al cual se le pasa las variables asignadas previamente
}     
void draw() {

  Gen_pob.Seleccion();  

  Gen_pob.calculo();
  getInfo();  //Se va mostrando la respuesta que obtiene cada vez que pasa por la seleccion genetica

  if (Gen_pob.finished()) {
    noLoop();  //si termina no vuelve a ejecutar el draw
  }
}
 
 
void getInfo() {
  String respuesta = Gen_pob.Obtener();
   println("Equipo ", respuesta);
}
