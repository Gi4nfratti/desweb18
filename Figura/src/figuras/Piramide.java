package figuras;

public class Piramide extends Quadrilatero{
	public Piramide (double base, double altura){
		super(base, altura);
	}
	
	public double area() {
		return (((getBase()*getAltura())/2)*4) + getBase() *4;
	}
	
	@Override
	public double perimetro() {
		return (getBase()*4) + (getAltura()*4);
	}
	
	@Override
	public double volume(){
		return ((1/3)*(getBase()*2)*getAltura());
	}

	@Override
	public String toString() {
		return "Pirâmide = " + area() + " Perímetro = " + perimetro() + " Volume = " + volume();
	}

}