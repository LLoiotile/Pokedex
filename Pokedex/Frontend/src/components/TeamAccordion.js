import Accordion from 'react-bootstrap/Accordion';
import Button from 'react-bootstrap/Button';
import UpdateModal from './UpdateModal';

const TeamAccordion = ({ getSpriteURL, teams, setTeams, pokemons }) => {
  const deleteTeam = async (teamId) => {
    try {
      const response = await fetch(
        `http://localhost:8080/api/v1/teams/${teamId}`,
        {
          method: 'DELETE',
        }
      );
      if (!response.ok) {
        throw new Error(`Error! status: ${response.status}`);
      }
      const newTeams = teams.filter((t) => t.id !== teamId);
      setTeams(newTeams);
    } catch (e) {
      alert(e.message);
    }
  };

  return (
    <>
      <Accordion>
        {teams.map((team) => (
          <Accordion.Item eventKey={team.id}>
            <Accordion.Header>
              <UpdateModal
                team={team}
                id={team.id}
                teams={teams}
                setTeams={setTeams}
                pokemons={pokemons}
              />
              <Button
                className='d-flex justify-content-between m-2'
                variant='danger'
                id='delete'
                onClick={() => {
                  deleteTeam(team.id);
                }}>
                <i className='fa fa-trash' />
              </Button>
              Team '{team.name}'
            </Accordion.Header>
            <Accordion.Body>
              {team.members.map((member) => (
                <img src={getSpriteURL(member.species)} alt={member.species} />
              ))}
            </Accordion.Body>
          </Accordion.Item>
        ))}
      </Accordion>
    </>
  );
};

export default TeamAccordion;
