package org.marcelot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UsuarioController {
	
	@Autowired
	private UsuariosRepo usuarioRepo;
	
	@GetMapping("/find/{id}")
	public Usuarios findUsuarioById(@PathVariable Integer id) {
		return usuarioRepo.findUsuarioById(id);
	}
	
	@GetMapping("/list")
	public Iterable<Usuarios> lista(){
		return usuarioRepo.findAll();
	} 
	
	@GetMapping("/listUserPass")
	public Iterable<Object> lista2(){
		return usuarioRepo.findUsuario();
	} 
	
	@GetMapping("/listSalario/{salario}")
	public Iterable<Object> lista3(@PathVariable float salario){
		return usuarioRepo.findSalario(salario);
	}
	//http://localhost:8088/listSalario/5000
	
	@GetMapping("/listAltura/{alturaInicio}/{alturaFim}")
	public Iterable<Object> lista4(@PathVariable float alturaInicio,@PathVariable float alturaFim){
		return usuarioRepo.findAltura(alturaInicio,alturaFim);
	}
	//http://localhost:8088/listAltura/1.70/1.75
	//http://localhost:8088/listAltura/1.70/1.80
	
	@GetMapping("/ranking")
	public Iterable<Object> ranking(){
		return usuarioRepo.ranking();
	} 
	//http://localhost:8088/ranking
	
	
}
