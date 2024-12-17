import React, { useState, useEffect } from 'react';
import axios from 'axios';

const DonorForm = ({ donor, onSave }) => {
    const [name, setName] = useState('');
    const [bloodType, setBloodType] = useState('');
    const [city, setCity] = useState('');

    useEffect(() => {
        if (donor) {
            setName(donor.name);
            setBloodType(donor.bloodType);
            setCity(donor.city);
        }
    }, [donor]);

    const handleSubmit = async (e) => {
        e.preventDefault();
        const donorData = { name, bloodType, city };
        if (donor) {
            await axios.put(`http://localhost:5084/api/donors/${donor.id}`, donorData);
        } else {
            await axios.post('http://localhost:5084/api/donors', donorData);
        }
        onSave();
    };

    return (
        <form onSubmit={handleSubmit}>
            <input
                type="text"
                value={name}
                onChange={(e) => setName(e.target.value)}
                placeholder="Donor Name"
                required
            />
            <input
                type="text"
                value={bloodType}
                onChange={(e) => setBloodType(e.target.value)}
                placeholder="Blood Type"
                required
            />
            <input
                type="text"
                value={city}
                onChange={(e) => setCity(e.target.value)}
                placeholder="City"
                required
            />
            <button type="submit">{donor ? 'Update' : 'Add'} Donor</button>
        </form>
    );
};

export default DonorForm;
