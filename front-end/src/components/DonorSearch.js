import React, { useState } from 'react';
import axios from 'axios';

const SearchDonor = ({ onSearch }) => {
    const [query, setQuery] = useState('');

    const handleSearch = async () => {
        const result = await axios.get(`http://localhost:5084/api/donors/search?name=${query}`);
        onSearch(result.data);
    };

    return (
        <div>
            <input
                type="text"
                placeholder="Search by Name"
                value={query}
                onChange={(e) => setQuery(e.target.value)}
            />
            <button onClick={handleSearch}>Search</button>
        </div>
    );
};

export default SearchDonor;
