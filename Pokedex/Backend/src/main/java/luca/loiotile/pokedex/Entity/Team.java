package luca.loiotile.pokedex.Entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.Length;

import java.util.Set;

@Entity
@Getter
@Setter
@ToString
public class Team {

    @Id
    @Column(name = "team_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotNull
    @Length(min = 1, max = 12)
    private String name;

    @NotNull
    @Size(min = 1, max = 6)
    @OneToMany(mappedBy = "team", fetch = FetchType.EAGER)
    private Set<Pokemon> members;
}
