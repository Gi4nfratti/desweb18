package model;

public class Olimpiada {
	private int id;
	private String nomeModalidade;
	private int idAno;
	private String nomePais;
	private int prata, bronze;
	private int ouro;

	public Olimpiada() {

	}

	public Olimpiada(int id, String nomeModalidade, int idAno, String nomePais, int ouro, int prata, int bronze) {
		setId(id);
		setNomeModalidade(nomeModalidade);
		setIdAno(idAno);
		setNomePais(nomePais);
		setOuro(ouro);
		setPrata(prata);
		setBronze(bronze);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNomeModalidade() {
		return nomeModalidade;
	}

	public void setNomeModalidade(String nomeModalidade) {
		this.nomeModalidade = nomeModalidade;
	}

	public int getIdAno() {
		return idAno;
	}

	public void setIdAno(int idAno) {
		this.idAno = idAno;
	}

	public String getNomePais() {
		return nomePais;
	}

	public void setNomePais(String nomePais) {
		this.nomePais = nomePais;
	}

	public int getOuro() {
		return ouro;
	}

	public void setOuro(int ouro2) {
		this.ouro = ouro2;
	}

	public int getPrata() {
		return prata;
	}

	public void setPrata(int prata) {
		this.prata = prata;
	}

	public int getBronze() {
		return bronze;
	}

	public void setBronze(int bronze) {
		this.bronze = bronze;
	}
	

	

	@Override
	public String toString() {
		return "Olimpiada [id=" + id + ", idModalidade=" + nomeModalidade
				+ ", idAno=" + idAno + ", idPais=" + nomePais + ", ouro=" + ouro + ", prata=" + prata + ", bronze="
				+ bronze + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + bronze;
		result = prime * result + id;
		result = prime * result + idAno;
		result = prime * result + prata;
		result = prime*  result + ouro;
		return result;
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
		if (bronze != other.bronze)
			return false;
		if (id != other.id)
			return false;
		if (idAno != other.idAno)
			return false;
		if (nomeModalidade != other.nomeModalidade)
			return false;
		if (nomePais != other.nomePais)
			return false;
		if (ouro != other.ouro)
			return false;
		if (prata != other.prata)
			return false;
		return true;
	}

	
	

	
}
