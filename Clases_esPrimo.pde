boolean esPrimo(int numero){
  int contador = 2;
  boolean primo=true;
  while ((primo) && (contador!=numero)){
    if (numero % contador == 0)
      primo = false;
    contador++;
  }
  return primo;
}

class Primos {
  int buscado;
  boolean esPrimo;
  
  Primos ( int p, boolean q){
    buscado = p;
    esPrimo = q;
  }
}

ArrayList<Primos> lista = new ArrayList<Primos>();
int cantidad = 30;
void setup (){
  size(600,600);
  background(0,0,0);
  for ( int i = 1; i < cantidad; ++i){
    Primos encontrados = new Primos( i , esPrimo(i));
    println(encontrados.esPrimo);
    
    if ( encontrados.esPrimo == true){
      fill(81,255,0);
      ellipse(i*20,i*20,60,100);
    } else{
      fill(0,55,255);
      ellipse(i*20,i*20,60,100);
    }
  }
}