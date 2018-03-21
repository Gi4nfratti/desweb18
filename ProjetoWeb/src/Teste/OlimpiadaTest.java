package Teste;

import static org.junit.Assert.*;
import org.junit.*;
import org.junit.runners.MethodSorters;

import model.Olimpiada;
import service.OlimpiadaService;



@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class OlimpiadaTest {
	Olimpiada olimpiada, copy;
	static int ano = 0;
	OlimpiadaService olimpiadaService;
	
	@Before
	public void setUp() throws Exception {
		
		olimpiadaService = new OlimpiadaService ();
		
		System.out.println("setup");
		olimpiada = new Olimpiada(1, 20, 30, 2012);
		copy = new Olimpiada(2, 40, 10, 2016);
		System.out.println(olimpiada);
		System.out.println(copy);
		System.out.println(ano);
	}
	
	

	@Test
	public void testCriar() {
		System.out.println("criar");
		olimpiadaService.criar(olimpiada);
		ano = olimpiada.getAno();
		System.out.println(ano);
		copy.setAno(ano);
		assertEquals("testa criacao", olimpiada, copy);
	}

	@Test
	public void testAtualizar() {
		System.out.println("atualizar");
		olimpiada.setOuro(20);
		copy.setOuro(60);		
		olimpiadaService.atualizar(olimpiada);
		olimpiadaService.carregar(olimpiada);
		assertEquals("testa atualizacao", olimpiada, copy);
	}

	@Test
	public void testExcluir() {
		System.out.println("excluir");
		copy.setAno(-1);
		copy.setOuro(0);
		copy.setPrata(0);
		copy.setBronze(0);
		olimpiadaService.excluir(olimpiada);
		olimpiadaService.carregar(olimpiada);
		assertEquals("testa exclusao", olimpiada, copy);
	}
	
	@Test
	public void testeCarregar() {
		System.out.println("carregar");
		Olimpiada fixture = new Olimpiada(1, 20, 30, 2012);
		Olimpiada novo = new Olimpiada(1, 20, 30, 2012);
		olimpiadaService.carregar(novo);
		assertEquals("testar a inclusao", novo, fixture);
	}

}
