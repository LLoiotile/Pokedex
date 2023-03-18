import Card from 'react-bootstrap/Card';
import PokeModal from './PokeModal';

const PokemonCard = ({ pokemon, getSpriteURL }) => {
  const spriteURL = getSpriteURL(pokemon.species);

  const getStringDexNumber = (dexNumber) => {
    let stringDexNumber = dexNumber;
    if (dexNumber < 10) {
      stringDexNumber = `00${dexNumber}`;
    } else if (dexNumber < 100) {
      stringDexNumber = `0${dexNumber}`;
    }
    return stringDexNumber;
  };

  return (
    <>
      <Card className='text-center'>
        <Card.Header>
          <img src={spriteURL} alt={pokemon.species} />
        </Card.Header>
        <Card.Title className='mt-2'>
          {pokemon.species} #{getStringDexNumber(pokemon.dexNumber)}
        </Card.Title>
        <Card.Body className='pt-0'>
          <PokeModal
            stringDexNumber={getStringDexNumber(pokemon.dexNumber)}
            typeOne={pokemon.typeOne}
            typeTwo={pokemon.typeTwo}
          />
          <Card.Text>
            <div className='pt-2'>
              <div>Attack: {pokemon.attack}</div>
              <div>Defense: {pokemon.defense}</div>
              <div>SpAttack: {pokemon.spAttack}</div>
              <div>SpDefense: {pokemon.spDefense}</div>
              <div>Speed: {pokemon.speed}</div>
            </div>
          </Card.Text>
        </Card.Body>
      </Card>
    </>
  );
};

export default PokemonCard;
