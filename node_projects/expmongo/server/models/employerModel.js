const mongoose = require('mongoose');

const employerSchema = mongoose.Schema(
    {
        index: {
            type: Number,
            required: true
        },
        name: {
            type: String,
            required: true
        },
        isActive: {
            type: Boolean,
            default: true
        },
        registered: Date,
        gender: String,
        eyeColor: String,
        favoriteFruit: String,
        company: {
            title: {
                type: String,
                required: true
            },
            email: {
                type: String,
                required: true
            },
            phone: String,
            location: {
                country: String,
                address: String
            }           
        },
        tags: []

    }
)

const Employer = mongoose.model('Employer', employerSchema);
module.exports = Employer;