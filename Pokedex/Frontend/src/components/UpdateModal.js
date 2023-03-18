import React, { useState } from 'react';
import Button from 'react-bootstrap/Button';
import Modal from 'react-bootstrap/Modal';
import Form from 'react-bootstrap/Form';

const UpdateModal = ({ id, team, setError, pokemons, teams, setTeams }) => {
  const [show, setShow] = useState(false);
  const handleShow = () => setShow(true);
  const handleClose = () => setShow(false);

  const defaultState = {
    name: team.name,
    member01:
      team.members[0] !== undefined && team.members[0] !== null
        ? team.members[0].species.toLowerCase()
        : '',
    member02:
      team.members[1] !== undefined && team.members[1] !== null
        ? team.members[1].species.toLowerCase()
        : '',
    member03:
      team.members[2] !== undefined && team.members[2] !== null
        ? team.members[2].species.toLowerCase()
        : '',
    member04:
      team.members[3] !== undefined && team.members[3] !== null
        ? team.members[3].species.toLowerCase()
        : '',
    member05:
      team.members[4] !== undefined && team.members[4] !== null
        ? team.members[4].species.toLowerCase()
        : '',
    member06:
      team.members[5] !== undefined && team.members[5] !== null
        ? team.members[5].species.toLowerCase()
        : '',
  };

  const [inputState, setInputState] = useState(defaultState);

  const handleInputChange = (input, value) => {
    const newInputState = { ...inputState, [input]: value };
    setInputState(newInputState);
  };

  const updateTeam = async (team, id) => {
    try {
      const updatedTeam = await fetch(
        `http://localhost:8080/api/v1/teams/${id}`,
        {
          method: 'PUT',
          headers: {
            'Content-type': 'application/json',
          },
          body: JSON.stringify(team),
        }
      );
      const teams = teams.filter((t) => t.id !== id);
      const newTeams = [...teams, updatedTeam];
      setTeams(newTeams);
    } catch (e) {
      setError(e);
    }
  };

  const teamUpdater = () => {
    const updatedTeam = {
      name: inputState.name === '' ? team.name : inputState.name,
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
    updatedTeam.members = updatedTeam.members.filter((m) => m != null);
    return updatedTeam;
  };

  return (
    <>
      <Button
        onClick={handleShow}
        className='d-flex justify-content-between m-2'
        variant='primary'
        id='delete'>
        <i className='fa fa-gear' />
      </Button>

      <Modal show={show} onHide={handleClose}>
        <Modal.Body>
          <Form.Group className='mb-3' controlId='name'>
            <Form.Control
              type='text'
              value={inputState.name}
              placeholder={team.name}
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
        </Modal.Body>
        <Modal.Footer>
          <Button variant='secondary' onClick={handleClose}>
            Close
          </Button>
          <Button
            variant='primary'
            onClick={() => {
              updateTeam(teamUpdater(), id);
            }}>
            Save Changes
          </Button>
        </Modal.Footer>
      </Modal>
    </>
  );
};

export default UpdateModal;
