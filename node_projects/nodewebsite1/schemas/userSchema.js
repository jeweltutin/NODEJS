const mongoose = require("mongoose");

const userSchema = mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    username: {
        type: String,
        required: true
    },
    password: {
        type: String,
        required: true
    },
    role: {
        type: Number,
        enum: [0, 1, 2],
        default: 1
    }, 
    status: {
        type: String,
        enum: ["active", "inactive"]
    }
});

module.exports = userSchema;