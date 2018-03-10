package figuras;

public class Cilindro extends Poligono{
	private double raio;
	public Cilindro (double base, double altura, double raio) {
		super(base, altura);
		this.raio = raio;
	}
	
	public double area() {
		return (2*(Math.PI*(Math.pow((getBase()/2),2)))) + (2*(Math.PI*(getBase()/2)*getAltura()));
	}
	
	@Override
	public double perimetro() {
		return (4*(Math.PI*(getBase()/2))) + (2*getAltura());
	}
	
	@Override
	public double volume(){
		return Math.PI*(Math.pow((getBase()/2),3)*getAltura());
	}

	public double getRaio() {
		return raio;
	}

	public void setRaio(double raio) {
		this.raio = raio;
	}

	@Override
	public String toString() {
		return "Cilindro =  getArea() " + area() + " getPerimetro() " + perimetro() + " getVolume() " + volume();
	}

}