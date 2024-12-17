import React, { useState, useEffect } from 'react';

function App() {
  const [donors, setDonors] = useState([]);

  // Fetch donors from the back-end API
  const fetchDonors = async () => {
    try {
      const response = await fetch('http://localhost:5084/api/donors'); // Replace with your back-end API URL
      if (!response.ok) {
        throw new Error('Failed to fetch donors');
      }
      const data = await response.json();
      setDonors(data);
    } catch (error) {
      console.error('Error fetching donors:', error);
    }
  };

  // Delete a donor
  const handleDelete = async (id) => {
    try {
      const response = await fetch(`http://localhost:5084/api/donors/${id}`, {
        method: 'DELETE',
      });
      if (!response.ok) {
        throw new Error('Failed to delete donor');
      }
      // Remove the deleted donor from the UI
      setDonors(donors.filter(donor => donor.id !== id));
    } catch (error) {
      console.error('Error deleting donor:', error);
    }
  };

  // Fetch donors when the component mounts
  useEffect(() => {
    fetchDonors();
  }, []); // Empty dependency array means this runs once after the initial render

  return (
    <div className="App">
      <h1>Blood Donors</h1>
      <ul>
        {donors.map(donor => (
          <li key={donor.id}>
            {donor.name} - {donor.bloodType} - {donor.city}
            <button onClick={() => handleDelete(donor.id)}>Delete</button>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default App;
