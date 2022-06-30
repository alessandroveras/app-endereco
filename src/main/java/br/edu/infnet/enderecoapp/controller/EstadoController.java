package br.edu.infnet.enderecoapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.enderecoapp.model.service.EstadoService;

@Controller
public class EstadoController {

	@Autowired
	private EstadoService estadoService;

	@GetMapping(value = "/estados")
	public String telaEstados(Model model) {

		model.addAttribute("estados", estadoService.obterLista());
		return "estado/lista";
	}
	
	@GetMapping(value = "/estados/{id}/municipios")
	public String telaEstados(Model model, @PathVariable Integer id) {

		model.addAttribute("municipios", estadoService.obterMunicipios(id));
		return "municipio/lista";
	}


}
