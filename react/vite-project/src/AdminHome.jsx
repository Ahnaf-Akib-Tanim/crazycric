// import React, { useState } from "react";
// import { Button, Form, FormControl, Nav, Navbar } from "react-bootstrap";

// function AdminHome() {
//   const [searchQuery, setSearchQuery] = useState("");
//   const [players, setPlayers] = useState([]);
//   const handleSearch = () => {
//     console.log("Searching for:", searchQuery);
//     const data = { searchQuery };
//     fetch("http://localhost:3000/admin/loggedin", {
//       method: "POST",
//       headers: {
//         "Content-Type": "application/json",
//       },
//       body: JSON.stringify(data),
//     })
//       .then((response) => response.json())
//       .then((data) => {
//         console.log("Success:", data);
//         setPlayers(data); // Update the list of players
//         setSearchQuery("");
//       })
//       .catch((error) => {
//         console.error("Error:", error);
//       });
//   };
//   const handleDelete = (playerId) => {
//     fetch(`http://localhost:3000/admin/delete/player/${playerId}`, {
//       method: "DELETE",
//     })
//       .then((response) => response.json())
//       .then((data) => {
//         console.log("Player deleted:", data);
//         // Update the list of players after successful deletion
//         setPlayers(players.filter((player) => player.id !== playerId));
//       })
//       .catch((error) => {
//         console.error("Error deleting player:", error);
//       });
//   };

//   return (
//     <div>
//       <Navbar bg="dark" variant="dark">
//         <Navbar.Brand>Welcome back, Admin</Navbar.Brand>
//         <Nav className="mr-auto">
//           <Form inline>
//             <FormControl
//               type="text"
//               placeholder="Search Player"
//               className="mr-sm-2"
//               value={searchQuery}
//               onChange={(e) => setSearchQuery(e.target.value)}
//             />
//             <Button variant="outline-light" onClick={handleSearch}>
//               Search
//             </Button>
//           </Form>
//         </Nav>
//         <Nav>
//           <Button variant="success" className="mr-2">
//             Insert Player
//           </Button>
//           <Button variant="primary">Update Player</Button>
//         </Nav>
//       </Navbar>

//       <div
//         style={{ display: "flex", flexWrap: "wrap", justifyContent: "center" }}
//       >
//         {players.map((player, index) => (
//           <div key={index} style={{ margin: "10px" }}>
//             <img
//               src={`http://localhost:3000/images/${player.player_name}.png`}
//               alt={player.player_name}
//               style={{ width: "100px", height: "100px" }}
//             />
//             <p>{player.name}</p>
//             <Button
//               variant="danger"
//               onClick={() => handleDelete(player.player_id)}
//             >
//               Delete
//             </Button>
//           </div>
//         ))}
//       </div>
//     </div>
//   );
// }

// export default AdminHome;
// Frontend: AdminHome.jsx
import React, { useEffect, useState } from "react";
import { Button, Form, FormControl, Nav, Navbar } from "react-bootstrap";
import { Link } from "react-router-dom";

function AdminHome() {
  const [searchQuery, setSearchQuery] = useState("");
  const [players, setPlayers] = useState([]);

  const handleSearch = () => {
    console.log("Searching for:", searchQuery);
    fetch("http://localhost:3000/admin/loggedin", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ searchQuery }),
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Success:", data);
        setPlayers(data);
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  };
  const handleinsert = () => {
    window.location.href = "/admin/loggedin/insert";
  };

  const handleDelete = (playerId) => {
    fetch(`http://localhost:3000/admin/delete/player/${playerId}`, {
      method: "DELETE",
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Player deleted:", data);
        setPlayers(players.filter((player) => player.player_id !== playerId));
      })
      .catch((error) => {
        console.error("Error deleting player:", error);
      });
  };

  useEffect(() => {
    // Fetch initial player data
    fetch("http://localhost:3000/admin/loggedin")
      .then((response) => response.json())
      .then((data) => {
        console.log("Initial player data:", data);
        setPlayers(data);
      })
      .catch((error) => {
        console.error("Error fetching initial player data:", error);
      });
  }, []);

  return (
    <div>
      <Navbar bg="dark" variant="dark">
        <Navbar.Brand>Welcome back, Admin</Navbar.Brand>
        <Nav className="mr-auto">
          <Form inline>
            <FormControl
              type="text"
              placeholder="Search Player"
              className="mr-sm-2"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
            />
            <Button variant="outline-light" onClick={handleSearch}>
              Search
            </Button>
          </Form>
        </Nav>
        <Nav>
          <Button variant="success" className="mr-2" onClick={handleinsert}>
            Insert Player
          </Button>
        </Nav>
      </Navbar>

      <div
        style={{
          display: "flex",
          flexWrap: "wrap",
          justifyContent: "center",
          marginTop: "20px",
        }}
      >
        {players.map((player) => (
          <div key={player.player_id} style={{ margin: "10px" }}>
            <img
              src={player.player_image_path}
              alt={player.player_name}
              style={{
                width: "100px",
                height: "100px",
                borderRadius: "50%",
                overflow: "hidden",
                padding: "10px",
              }}
            />
            <p>{player.player_name}</p>
            <Button className="coolBeans">
              <Link
                to={`/admin/loggedin/update/${player.player_id}`}
                style={{ color: "#fff", textDecoration: "none" }}
              >
                update
              </Link>
            </Button>
          </div>
        ))}
      </div>
    </div>
  );
}

export default AdminHome;
