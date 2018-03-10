package teste;

import figuras.*;

public class Teste {
	public static void main(String[] args) {
		Geometria g = new Geometria();
		g.add(new Losango(10.0, 5.0));
		g.add(new Triangulo(10.0, 5.0));
		g.add(new Retangulo(7.0, 3.0));
		g.add(new Quadrado(6.0));
		g.add(new Circulo(3.0));
		g.add(new Trapezio(20.0, 30.0, 15.0));
		g.add(new Cubo (2.0, 2.0, 2.0));
		g.add(new Esfera (3.0));
		g.add(new Cilindro (4.0, 10.0, 3.0));
		g.add(new Piramide (2.0, 7.0));
		
		
		
		for(Figura figura:g.getFiguras()) {
			System.out.println(g.area(figura));
			System.out.println(g.perimetro(figura));
			System.out.println(g.volume(figura));
			if(figura instanceof Diagonal) {
				System.out.println(g.diagonal((Diagonal)figura));
			}
		}
	}
}
