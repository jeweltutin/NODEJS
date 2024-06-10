const Employer = require('../models/employerModel');

const addEmployerMultiple = async (req, res) => {
    console.log(req.body);
    try {
        await Employer.insertMany(req.body);
        res.status(201).json({
            success: true,
            message: "All Employer were inserted successfully!"
        })
    } catch (error) {
        res.status(401).json({
            success: false,
            data: 'Not added :('
        })
    }
}

module.exports = addEmployerMultiple;