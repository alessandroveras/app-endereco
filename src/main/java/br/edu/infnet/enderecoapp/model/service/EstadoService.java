package br.edu.infnet.enderecoapp.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.enderecoapp.clients.EstadoClient;
import br.edu.infnet.enderecoapp.model.domain.Estado;
import br.edu.infnet.enderecoapp.model.domain.Municipio;

@Service
public class EstadoService {

	@Autowired
	private EstadoClient estadoClient;

	public List<Estado> obterLista() {
		return estadoClient.obterLista();
	}
	
	public List<Municipio> obterMunicipios(Integer id) {
		return estadoClient.obterMunicipios(id);
	}

}
