package org.marcelot;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface UsuariosRepo extends CrudRepository<Usuarios, Integer>{
	
	Usuarios findUsuarioById(Integer id);
	
	String sql = "SELECT usuario,senha FROM usuarios ORDER BY usuario;";
	
	@Query(value=sql,nativeQuery = true)
	public List<Object> findUsuario();
	
	String sql2 = "SELECT usuario,senha,salario FROM usuarios WHERE salario > :salario ORDER BY usuario;";
	@Query(value=sql2,nativeQuery = true)
	public List<Object> findSalario(@Param("salario") float salario);
	
	String sql3 = "SELECT nome, altura FROM usuarios WHERE altura BETWEEN :alturaInicio AND :alturaFim";
	@Query (value=sql3,nativeQuery = true)
	public List<Object> findAltura(@Param("alturaInicio") float alturaInicio,@Param("alturaFim") float alturaFim);
	
	String sql4 = "SELECT nome, salario FROM usuarios WHERE salario>0.0 ORDER BY salario DESC;";
	@Query(value=sql4,nativeQuery = true)
	public List<Object> ranking();
	
	

}
