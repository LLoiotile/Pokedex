package luca.loiotile.pokedex.Repository;

import luca.loiotile.pokedex.Entity.Team;
import luca.loiotile.pokedex.Enum.Species;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeamRepository extends JpaRepository<Team, Integer> {

    List<Team> findByMembersSpecies(Species species);

    void deleteByMembersSpecies(Species species);
}
