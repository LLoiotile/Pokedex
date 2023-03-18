package luca.loiotile.pokedex.Repository;

import luca.loiotile.pokedex.Entity.Pokemon;
import luca.loiotile.pokedex.Enum.Species;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PokemonRepository extends JpaRepository<Pokemon, Integer> {

    Pokemon findBySpecies(Species species);

    Pokemon findByTeamId(int id);
}
