package br.com.treinaweb.twgerenciador.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.treinaweb.twgerenciador.modelos.Tarefa;

public interface RepositorioTarefa extends JpaRepository<Tarefa, Long> {

}
