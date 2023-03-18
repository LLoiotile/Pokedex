package luca.loiotile.pokedex.Controller;

import luca.loiotile.pokedex.Entity.Pokemon;
import luca.loiotile.pokedex.Repository.PokemonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("api/v1/pokemons")
public class PokemonController {

    @Autowired
    PokemonRepository pokemonRepository;

    @GetMapping
    public List<Pokemon> findAll() {
        return pokemonRepository.findAll();
    }
}
