int factorial(int numero) {
if(numero == 0)
  return 1;
else
  return numero * factorial(numero-1);
}

class factores {
  int ingresado;
  int resultado;
  factores ( int a , int b){
    ingresado = a;
    resultado = b;
  }
}
int contador = 15;
void setup(){
  size(1300,700);
  background(30,42,121);
  for ( int i = 1; i < contador; ++i){
    factores finales = new factores ( i , factorial(i));
    println("Factorial de ",i," = ",(finales.resultado));
    stroke(16,60,218);
    line(i,0,factorial(i),700);
    
  }
}