const User = require("../models/userModel")



const createUser = async (req, res) => {
    const newUser = new User(req.body);
    await newUser.save()
        .then((data) => {
            res.status(200).json({
                result: data,
                message: "User created successfully!"
            })
        })
        .catch((error) => {
            res.status(500).json({
                // msg: "There was a server side error!"
                // msg: error.message
                // msg: error.errors.username.message
                msg: error.message
            });
        })
}

const getUsers = async (req, res) => {
    await User.find()
    .then((data) => {
        res.status(200).json({
            message: "Data fetched!",
            data: data
        })
    })
    .catch((error) => {
        res.status(500).json({
            msg: error
        })
    })

}

module.exports = { createUser, getUsers }