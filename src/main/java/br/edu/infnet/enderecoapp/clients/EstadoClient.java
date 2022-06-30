package br.edu.infnet.enderecoapp.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.enderecoapp.model.domain.Estado;
import br.edu.infnet.enderecoapp.model.domain.Municipio;

@FeignClient(url = "https://servicodados.ibge.gov.br/api/v1/localidades", name = "estadoClient")
public interface EstadoClient {
	
	@GetMapping(value = "/estados")
	public List<Estado> obterLista();
	
	@GetMapping(value = "/estados/{id}/municipios")
	public List<Municipio> obterMunicipios(@PathVariable Integer id);

}
