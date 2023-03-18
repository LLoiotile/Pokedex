import Carousel from 'react-multi-carousel';
import 'react-multi-carousel/lib/styles.css';
import PokemonCard from './PokemonCard';

const responsive = {
  desktop: {
    breakpoint: { max: 3000, min: 1024 },
    items: 3,
  },
  tablet: {
    breakpoint: { max: 1024, min: 464 },
    items: 2,
  },
  mobile: {
    breakpoint: { max: 464, min: 0 },
    items: 1,
  },
};

const CarouselPokes = ({ pokemons, getSpriteURL }) => {
  return (
    <>
      <Carousel responsive={responsive}>
        {pokemons.map((pokemon) => (
          <div className='p-2' key={pokemon.dexNumber}>
            <PokemonCard pokemon={pokemon} getSpriteURL={getSpriteURL} />
          </div>
        ))}
      </Carousel>
    </>
  );
};

export default CarouselPokes;
