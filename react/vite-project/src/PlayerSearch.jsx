import React, { useState } from 'react';
import { Button, Form, FormGroup, FormControl, FormCheck } from 'react-bootstrap';

function PlayerSearch() {
  const [searchQuery, setSearchQuery] = useState('');
  const [searchById, setSearchById] = useState(false);
  const [searchByName, setSearchByName] = useState(false);

  const handleSearch = () => {
    // Same as before
  };

  return (
    <Form>
      <FormGroup>
        <FormControl type="text" value={searchQuery} onChange={e => setSearchQuery(e.target.value)} placeholder="Search for a player" />
      </FormGroup>
      <FormGroup>
        <FormCheck type="checkbox" checked={searchById} onChange={e => setSearchById(e.target.checked)} label="Search by Player ID" />
        <FormCheck type="checkbox" checked={searchByName} onChange={e => setSearchByName(e.target.checked)} label="Search by Player Name" />
      </FormGroup>
      <Button onClick={handleSearch}>Search</Button>
    </Form>
  );
}

export default PlayerSearch;