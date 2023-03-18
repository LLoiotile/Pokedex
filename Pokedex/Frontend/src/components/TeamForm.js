import { useState } from 'react';
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';

const TeamForm = ({ pokemons, teams, setError, setTeams }) => {
  const defaultState = {
    id: 0,
    name: '',
    member01: '',
    member02: '',
    member03: '',
    member04: '',
    member05: '',
    member06: '',
  };

  const [inputState, setInputState] = useState(defaultState);

  const teamBuilder = () => {
    const team = {
      id: inputState.id,
      name: inputState.name,
      members: [
        pokemons.filter(
          (p) => p.species === inputState.member01.trim().toUpperCase()
        )[0],
        pokemons.filter(
          (p) => p.species === inputState.member02.trim().toUpperCase()
        )[0],
        pokemons.filter(
          (p) => p.species === inputState.member03.trim().toUpperCase()
        )[0],
        pokemons.filter(
          (p) => p.species === inputState.member04.trim().toUpperCase()
        )[0],
        pokemons.filter(
          (p) => p.species === inputState.member05.trim().toUpperCase()
        )[0],
        pokemons.filter(
          (p) => p.species === inputState.member06.trim().toUpperCase()
        )[0],
      ],
    };
    team.members = team.members.filter((m) => m != null);
    return team;
  };

  const createTeam = async (team) => {
    try {
      const response = await fetch('http://localhost:8080/api/v1/teams', {
        method: 'POST',
        headers: {
          'Content-type': 'application/json',
        },
        body: JSON.stringify(team),
      });
      const newTeams = [...teams, response];
      setTeams(newTeams);
    } catch (e) {
      setError(e.message);
    }
  };

  const handleInputChange = (input, value) => {
    const newInputState = { ...inputState, [input]: value };
    setInputState(newInputState);
  };

  return (
    <>
      <Form
        onSubmit={() => {
          createTeam(teamBuilder());
        }}>
        <Form.Group className='mb-3' controlId='name'>
          <Form.Control
            type='text'
            value={inputState.name}
            placeholder='Enter the team name'
            onChange={(event) => {
              handleInputChange(event.target.id, event.target.value);
            }}
          />
        </Form.Group>

        <Form.Group className='mb-3' controlId='member01'>
          <Form.Control
            type='text'
            value={inputState.member01}
            placeholder='Enter a pokemon name'
            onChange={(event) => {
              handleInputChange(event.target.id, event.target.value);
            }}
          />
        </Form.Group>

        <Form.Group className='mb-3' controlId='member02'>
          <Form.Control
            type='text'
            value={inputState.member02}
            placeholder='Enter a pokemon name'
            onChange={(event) => {
              handleInputChange(event.target.id, event.target.value);
            }}
          />
        </Form.Group>

        <Form.Group className='mb-3' controlId='member03'>
          <Form.Control
            type='text'
            value={inputState.member03}
            placeholder='Enter a pokemon name'
            onChange={(event) => {
              handleInputChange(event.target.id, event.target.value);
            }}
          />
        </Form.Group>

        <Form.Group className='mb-3' controlId='member04'>
          <Form.Control
            type='text'
            value={inputState.member04}
            placeholder='Enter a pokemon name'
            onChange={(event) => {
              handleInputChange(event.target.id, event.target.value);
            }}
          />
        </Form.Group>

        <Form.Group className='mb-3' controlId='member05'>
          <Form.Control
            type='text'
            value={inputState.member05}
            placeholder='Enter a pokemon name'
            onChange={(event) => {
              handleInputChange(event.target.id, event.target.value);
            }}
          />
        </Form.Group>

        <Form.Group className='mb-3' controlId='member06'>
          <Form.Control
            type='text'
            value={inputState.member06}
            placeholder='Enter a pokemon name'
            onChange={(event) => {
              handleInputChange(event.target.id, event.target.value);
            }}
          />
        </Form.Group>

        <div className='text-center m-2'>
          <Button variant='primary' type='submit' id='btnSubmit'>
            Submit
          </Button>
        </div>
      </Form>
    </>
  );
};

export default TeamForm;
