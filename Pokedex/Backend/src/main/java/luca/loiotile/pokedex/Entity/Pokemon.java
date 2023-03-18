package luca.loiotile.pokedex.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import luca.loiotile.pokedex.Enum.Species;
import luca.loiotile.pokedex.Enum.Type;

@Entity
@Getter
@Setter
@ToString
public class Pokemon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int dexNumber;

    @NotNull
    @Enumerated(EnumType.STRING)
    private Species species;

    @NotNull
    @Enumerated(EnumType.STRING)
    private Type typeOne;

    @Enumerated(EnumType.STRING)
    private Type typeTwo;

    @NotNull
    private int HPs;

    @NotNull
    private int attack;

    @NotNull
    private int spAttack;

    @NotNull
    private int defense;

    @NotNull
    private int spDefense;

    @NotNull
    private int speed;

    @ToString.Exclude
    @JsonIgnore
    @JoinColumn(name = "id_team", foreignKey = @ForeignKey(name = "FK_team"))
    @ManyToOne
    private Team team;
}
