package figuras;

public class Cubo extends Poligono{
	private double largura;
	public Cubo(double base, double altura, double largura) {
		super(base, altura);
		this.largura = largura;
	}
	
	public double area() {
		return getBase() * 6;
	}
	
	@Override
	public double perimetro() {
		return 14 * getBase(); 
	}
	
	@Override
	public double volume(){
		return Math.pow(area(), 3);
	}

	public double getLargura() {
		return largura;
	}

	public void setLargura(double largura) {
		this.largura = largura;
	}

	@Override
	public String toString() {
		return "Cubo = " + area() + " Perímetro = " + perimetro() + " Volume = " + volume();
	}

}