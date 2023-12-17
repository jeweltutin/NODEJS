const mongoose = require("mongoose");

const userSchema = mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    username: {
        type: String,
        unique: true,
        required: [true, "name required."]
    },
    password: {
        type: String,
        required: true
    },
    age: {
        type: Number,
        default: 28
    },
    salary: {
        type: Number,
        default: 12000
    },
    role: {
        type: Number,
        enum: [0, 1, 2],
        default: 1
    }, 
    status: {
        type: String,
        enum: ["active", "inactive"],
        default: "active"
    }
});

const User = mongoose.model('User', userSchema)
module.exports = User;