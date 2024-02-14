import axios from "axios";
import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
const Coachinfo = () => {
  const [coachinfo, setCoachInfo] = useState(null);
  const { coach_name } = useParams();

  useEffect(() => {
    const fetchCoachInfo = async () => {
      console.log("coach_name");
      console.log(coach_name);
      try {
        const response = await axios.get(
          `http://localhost:3000/user/loggedin/coach/${coach_name}`
        );
        console.log(response.data[0]);
        setCoachInfo(response.data[0]);
      } catch (error) {
        console.error("Failed to fetch coach info:", error);
      }
    };

    fetchCoachInfo();
  }, [coach_name]);

  if (!coachinfo) {
    return <div>Loading...</div>;
  }

  return (
    <div className="team-info-container">
      <div className="team-name-container">
        <img
          src={`http://localhost:3000/coachimages/${coachinfo.coach_name}.jpeg`}
          alt={coachinfo.coach_name}
        />
        <h1>{coachinfo.coach_name}</h1>
      </div>
      <div className="table-container">
        <table>
          <tbody>
            <tr>
              <td>Country</td>
              <td>{coachinfo.coach_country_name}</td>
            </tr>
            <tr>
              <td>Coaching Team</td>
              <td>{coachinfo.coaching_team}</td>
            </tr>
            <tr>
              <td>Matches Won</td>
              <td>{coachinfo.num_of_matches_won}</td>
            </tr>
            <tr>
              <td>Success Percentage</td>
              <td>{coachinfo.success_percentage}</td>
            </tr>
            <tr>
              <td>Age</td>
              <td>{coachinfo.coach_age}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default Coachinfo;
