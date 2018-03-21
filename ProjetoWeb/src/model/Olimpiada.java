package model;
public class Olimpiada extends Modalidade{
	private boolean tipo;
	private int ano;
	
	public Olimpiada() {
		
	}
	
	public Olimpiada(int ouro, int prata, int bronze, int ano) {
		super();
		this.ano = ano;
	}
	
	public Olimpiada(boolean tipo, int ano) {
		super();
		this.tipo = tipo;
		this.ano = ano;
	}
	

	
	public boolean isTipo() {
		return tipo;
	}

	public void setTipo(boolean tipo) {
		this.tipo = tipo;
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Olimpiada other = (Olimpiada) obj;
		if (ano != other.ano)
			return false;
		else if (tipo != other.tipo)
			return false;
		return false;
	}
	
	
	
}
