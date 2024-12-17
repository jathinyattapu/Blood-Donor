import React, { useState, useEffect } from 'react';
import axios from 'axios';

const DonorList = ({ onEdit, onDelete, onSearch }) => {
    const [donors, setDonors] = useState([]);

    useEffect(() => {
        fetchDonors();
    }, [onSearch]);

    const fetchDonors = async () => {
        const result = await axios.get(`http://localhost:5084/api/donors`);
        setDonors(result.data);
    };

    const handleDelete = async (id) => {
        await axios.delete(`http://localhost:5084/api/donors/${id}`);
        fetchDonors();
    };

    return (
        <div>
            <h2>Donors List</h2>
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Blood Type</th>
                        <th>City</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    {donors.map((donor) => (
                        <tr key={donor.id}>
                            <td>{donor.name}</td>
                            <td>{donor.bloodType}</td>
                            <td>{donor.city}</td>
                            <td>
                                <button onClick={() => onEdit(donor)}>Edit</button>
                                <button onClick={() => handleDelete(donor.id)}>Delete</button>
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
};

export default DonorList;
