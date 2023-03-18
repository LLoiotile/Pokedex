import Button from 'react-bootstrap/Button';
import Container from 'react-bootstrap/Container';
import Navbar from 'react-bootstrap/Navbar';
import CarouselPokes from './components/CarouselPokes';
import { useState, useEffect } from 'react';
import TeamForm from './components/TeamForm';
import TeamAccordion from './components/TeamAccordion';

const App = () => {
  const [pokemons, setPokemons] = useState([]);
  const [teams, setTeams] = useState([]);
  let [error, setError] = useState('');

  useEffect(() => {
    getAllPokemons();
    getAllTeams();
  }, []);

  const getAllPokemons = async () => {
    try {
      const response = await fetch('http://localhost:8080/api/v1/pokemons');
      if (!response.ok) {
        throw new Error(`Error! status: ${response.status}`);
      }
      const pokemons = await response.json();
      setPokemons(pokemons);
    } catch (e) {
      setError(e.message);
    }
  };

  const getAllTeams = async () => {
    try {
      const response = await fetch('http://localhost:8080/api/v1/teams');
      if (!response.ok) {
        throw new Error(`Error! status: ${response.status}`);
      }
      const teams = await response.json();
      setTeams(teams);
    } catch (e) {
      setError(e.message);
    }
  };

  const deleteAllTeams = async () => {
    try {
      const response = await fetch(`http://localhost:8080/api/v1/teams`, {
        method: 'DELETE',
      });
      if (!response.ok) {
        throw new Error(`Error! status: ${response.status}`);
      }
      const newTeams = [];
      setTeams(newTeams);
    } catch (e) {
      setError(e.message);
    }
  };

  const getSpriteURL = (species) => {
    switch (species) {
      case 'NIDORAN_F':
        return 'https://img.pokemondb.net/sprites/sword-shield/icon/nidoran-f.png';
      case 'NIDORAN_M':
        return 'https://img.pokemondb.net/sprites/sword-shield/icon/nidoran-m.png';
      case 'MR_MIME':
        return 'https://img.pokemondb.net/sprites/sword-shield/icon/mr-mime.png';
      case 'FARFETCH_D':
        return 'https://img.pokemondb.net/sprites/sword-shield/icon/farfetchd.png';
      default:
        return `https://img.pokemondb.net/sprites/sword-shield/icon/${species.toLowerCase()}.png`;
    }
  };

  return (
    <>
      <Navbar expand='lg' variant='dark' bg='dark'>
        <Container id='nav-container'>
          <Navbar.Brand>POKEDEX</Navbar.Brand>
        </Container>
      </Navbar>
      <div>
        <CarouselPokes pokemons={pokemons} getSpriteURL={getSpriteURL} />
      </div>
      <hr />
      <div className='d-flex flex-row justify-content-evenly p-3'>
        <div className='border border-dark p-3 col-12 col-md-4'>
          <TeamForm
            pokemons={pokemons}
            teams={teams}
            setTeams={setTeams}
            setError={setError}
          />
        </div>
        <div className='border border-dark p-3 col-12 col-md-4'>
          <TeamAccordion
            getSpriteURL={getSpriteURL}
            teams={teams}
            setTeams={setTeams}
            error={error}
            setError={setError}
            pokemons={pokemons}
          />
          <div className='text-center'>
            <Button
              className='m-2'
              variant='danger'
              id='deleteAll'
              onClick={deleteAllTeams}>
              Delete All
            </Button>
          </div>
        </div>
      </div>
    </>
  );
};

export default App;
