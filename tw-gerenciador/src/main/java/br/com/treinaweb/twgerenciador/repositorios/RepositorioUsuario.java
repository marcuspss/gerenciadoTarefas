package br.com.treinaweb.twgerenciador.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.treinaweb.twgerenciador.modelos.Usuario;

public interface RepositorioUsuario extends JpaRepository<Usuario , Long> {

    Usuario findByEmail(String email);
}
