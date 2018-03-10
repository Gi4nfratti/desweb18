package figuras;

public abstract class Quadrilatero extends Poligono{
	
	public Quadrilatero(double base, double altura) {
		super(base, altura);
	}
	
	public double area() {
		return getBase() * getAltura();
	}
	
	public double perimetro() {
		return 2.0 * getBase() + 2.0 * getAltura();
	}
	
	public double volume() {
		return Math.pow(getBase(), 3);
	}

	@Override
	public String toString() {
		return "Quadrilatero [getBase()=" + getBase() + ", getAltura()=" + getAltura() + "]";
	}

}
