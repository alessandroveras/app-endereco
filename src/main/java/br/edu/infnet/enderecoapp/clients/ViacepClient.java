package br.edu.infnet.enderecoapp.clients;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.enderecoapp.model.domain.Endereco;

@FeignClient(url = "https://viacep.com.br/ws", name = "viacepClient")
public interface ViacepClient {
	
	@GetMapping(value = "/{cep}/json/") 
	public Endereco obterPorCep(@PathVariable String cep);

}
