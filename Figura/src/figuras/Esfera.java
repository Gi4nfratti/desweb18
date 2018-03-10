package figuras;

public class Esfera extends Figura{
	private double raio;
	public Esfera(double raio) {
		super();
		this.raio = raio;
	}
	
	public double area() {
		return (4*Math.PI)*(Math.pow(getRaio(),2));
	}
	
	@Override
	public double perimetro() {
		return (2*Math.PI)*getRaio(); 
	}
	
	@Override
	public double volume(){
		return (4/3)*Math.PI*(Math.pow(getRaio(), 3));
	}

	public double getRaio() {
		return raio;
	}

	public void setRaio(double raio) {
		this.raio = raio;
	}

	@Override
	public String toString() {
		return "Esfera = " + area() + " Perímetro = " + perimetro() + " Volume = " + volume();
	}

}