package luca.loiotile.pokedex.Controller;

import jakarta.validation.Valid;
import luca.loiotile.pokedex.Entity.Pokemon;
import luca.loiotile.pokedex.Entity.Team;
import luca.loiotile.pokedex.Repository.PokemonRepository;
import luca.loiotile.pokedex.Repository.TeamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;

@CrossOrigin
@RestController
@RequestMapping("api/v1/teams")
public class TeamController {

    @Autowired
    TeamRepository teamRepository;

    @Autowired
    PokemonRepository pokemonRepository;

    @GetMapping
    public List<Team> findAll() {
        return teamRepository.findAll();
    }

    @PostMapping
    public Team create(@Valid @RequestBody Team team) {
        Team teamEntity = new Team();
        teamEntity.setName(team.getName());
        teamEntity.setMembers(new HashSet<>());
        for (Pokemon p : team.getMembers()) {
            Optional<Pokemon> pokemonOpt = pokemonRepository.findById(p.getDexNumber());
            if (pokemonOpt.isPresent()) {
                Pokemon pokemon = pokemonOpt.get();
                if (pokemon.getTeam() == null) {
                    pokemon.setTeam(teamEntity);
                    teamEntity.getMembers().add(pokemon);
                } else {
                    throw new ResponseStatusException(HttpStatus.METHOD_NOT_ALLOWED, "ogni pokemon scelto non deve essere già stato assegnato");
                }
            } else {
                throw new ResponseStatusException(HttpStatus.METHOD_NOT_ALLOWED, "non puoi creare un team con un pokemon che non esiste");
            }
        }
        return teamRepository.save(teamEntity);
    }

    @PutMapping("/{id}")
    public Team update(@Valid @RequestBody Team team, @PathVariable Integer id) {
        Optional<Team> teamOpt = teamRepository.findById(id);
        if (teamOpt.isPresent()) {
            Team teamEntity = teamOpt.get();
            teamEntity.setName(team.getName());
            teamEntity.getMembers().forEach(m -> m.setTeam(null));
            teamEntity.setMembers(new HashSet<>());
            team.getMembers().forEach(p -> {
                Pokemon pokemon = pokemonRepository.findBySpecies(p.getSpecies());
                if (pokemon.getTeam() == null) {
                    pokemon.setTeam(teamEntity);
                    teamEntity.getMembers().add(pokemon);
                } else {
                    throw new ResponseStatusException(HttpStatus.METHOD_NOT_ALLOWED, "ogni pokemon scelto non deve essere già stato assegnato");
                }
            });
            return teamRepository.save(teamEntity);
        } else {
            throw new ResponseStatusException(HttpStatus.METHOD_NOT_ALLOWED, "non puoi aggiornare un team che non esiste");
        }
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable int id) {
        Optional<Team> teamOpt = teamRepository.findById(id);
        if (teamOpt.isPresent()) {
            Team team = teamOpt.get();
            team.getMembers().forEach(p -> p.setTeam(null));
        } else {
            throw new ResponseStatusException(HttpStatus.METHOD_NOT_ALLOWED, "non puoi cancellare un team che non esiste");
        }
        teamRepository.deleteById(id);
    }

    @DeleteMapping
    public void deleteAll() {
        findAll().forEach(t -> deleteById(t.getId()));
    }
}
