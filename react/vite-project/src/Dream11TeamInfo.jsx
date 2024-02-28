import React, { useEffect, useState } from "react";
import { Col, Container, Row, Table } from "react-bootstrap";
import { useParams } from "react-router-dom";

const Dream11TeamInfo = () => {
  const [teamInfo, setTeamInfo] = useState([]);
  const { teamName } = useParams();

  useEffect(() => {
    const fetchTeamInfo = async () => {
      try {
        const response = await fetch(
          `http://localhost:3000/user/loggedin/Dream11TeamInfo/${teamName}`
        );
        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }
        const data = await response.json();
        setTeamInfo(data);
      } catch (error) {
        console.error("Error fetching team info:", error);
      }
    };

    fetchTeamInfo();
  }, [teamName]);

  return (
    <Container
      style={{ overflowY: "auto", maxHeight: "100vh", scrollbarWidth: "none" }}
    >
      <h1 className="mt-5">Dream11 Team: {teamName}</h1>
      {teamInfo.length > 0 && (
        <>
          <Row className="mt-4">
            <Col>
              <h4>Captain: {teamInfo[0].captain}</h4>
              <h4>Coach: {teamInfo[0].coach_name}</h4>
            </Col>
            <Col>
              <h2 className="text-center">Total Score: {teamInfo[0].score}</h2>
            </Col>
          </Row>
          <Table striped bordered hover className="mt-4">
            <thead>
              <tr>
                <th>#</th>
                <th>Player Name</th>
                <th>Player Image</th>
                <th>Role</th>
                <th>Country</th>
              </tr>
            </thead>
            <tbody>
              {teamInfo.map((player, index) => (
                <tr key={index}>
                  <td>{index + 1}</td>
                  <td>
                    {player[`player${index + 1}`]}
                    <img
                      src={player.player_image_path}
                      alt={player[`player${index + 1}`]}
                      style={{
                        width: "150px",
                        height: "150px",
                        borderRadius: "50%",
                        overflow: "hidden",
                        padding: "10px",
                      }}
                    />
                  </td>
                  <td>{player.player_role}</td>
                  <td>{player.player_team_name}</td>
                </tr>
              ))}
            </tbody>
          </Table>
          <Row className="mt-4">
            {/* <Col>
              <Button variant="primary" size="lg" block>
                Update Dream Team
              </Button>
            </Col>
            <Col>
              <Button variant="danger" size="lg" block>
                Delete Dream Team
              </Button>
            </Col> */}
          </Row>
        </>
      )}
    </Container>
  );
};

export default Dream11TeamInfo;
