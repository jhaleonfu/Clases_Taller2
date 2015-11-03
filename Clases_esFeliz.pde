ArrayList<Integer> evaluados = new ArrayList<Integer>();

boolean esFeliz ( int n ) {
  if ( n == 1 ) return true;
  if ( evaluados.indexOf(n) != -1 ) return false;
  evaluados.add(n);
  int suma = 0;
  while ( n > 0 ) {
    int r = n % 10;
    suma = suma + r * r;
    n = n / 10;
  }
  return esFeliz(suma);
}

boolean esPrimo ( int n ) {
  for ( int i = 2; i < n; ++i )
    if ( n % i == 0 )
      return false;
  return true;
}

class Numero {
  int n;
  boolean esFeliz, esPrimo;
  Numero ( int a, boolean b, boolean c ) {
    n = a;
    esFeliz = b;
    esPrimo = c; 
  }
}

int R, C;

void setup ( ) {
  size(640, 720);
  background(42,47,64);
  R = 40;
  C = width / (R * 2);
  
  int cantidad = 60;
  
  ArrayList<Numero> numeros = new ArrayList<Numero>();
  for ( int i = 0; i < cantidad; ++i ) {
    numeros.add( new Numero(i, esFeliz(i), esPrimo(i)) );
  }
  
  for ( int i = 0; i < cantidad; ++i ) {
    if ( numeros.get(i).esFeliz ) {
      dibujarFeliz(i);
    } else {
      dibujarTriste(i);
    }
  }
}

void dibujarFeliz ( int n ) {
  stroke(255, 255, 0);
  int i = n / C;
  int j = n % C;
  int x = j * (R * 2) + R;
  int y = i * (R * 2) + R;
  println("Feliz");
  println(x, y);
  ellipse(x, y, R, R);
}

void dibujarTriste ( int n ) {
  stroke(0, 255, 255);
  int i = n / C;
  int j = n % C;
  int x = j * (R * 2) + R;
  int y = i * (R * 2) + R;
  println("Triste");
  println(x, y);
  ellipse(x, y, R, R);
}