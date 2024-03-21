import User from "../models/User.model.js";
import bcrypt from "bcryptjs";
import expressAsyncHandler from "express-async-handler";
import jwt from "jsonwebtoken";

const authUser = async (req, res) => {
    const user = await User.findOne({ email: req.body.email })
    const secret = process.env.secret;
    // console.log(user);
    if(!user) {
        return res.status(400).send('The user not found');
    }

    if (user && bcrypt.compareSync(req.body.password, user.passwordHash)) {
        const token = jwt.sign(
            {
                userId: user.id,
                isAdmin: user.isAdmin
            },
            secret,
            { expiresIn: '7d' }
        )
        res.status(200).send({
            user: user.email , 
            token: token
        }) 
    } else {
        res.status(400).send('password is wrong!');
    }
}

const getUsers = async (req,res) => {
    const userList = await User.find().select('-passwordHash -__v');

    if(!userList) { // if no records found [] empty array returns
        res.status(500).json({success: false})
    } 
    if(userList.length <= 0){   //  userList.length == ""
        return res.status(400).json('User not found')
    }
    res.send(userList);
}

const getUser = async (req, res) => {
    const user = await User.findById(req.params.id).select('-passwordHash');

    if(!user) {
        res.status(500).json({message: 'The user with the given ID was not found.'})
    } 
    res.status(200).send(user);
}

const createUser = expressAsyncHandler(async(req, res) => {
    const existUser = await User.findOne().or([
        { email: req.body.email }, 
        { phone: req.body.phone }
    ])
    if (existUser) {
        res.status(400).json({
            success: false,
            msg: 'User already exist!',
            data: [],
          });
    } else {
        let user = new User({
            name: req.body.name,
            email: req.body.email,
            passwordHash: bcrypt.hashSync(req.body.password, 10),
            //passwordHash: req.body.password,
            phone: req.body.phone,
            isAdmin: req.body.isAdmin,
            street: req.body.street,
            apartment: req.body.apartment,
            zip: req.body.zip,
            city: req.body.city,
            country: req.body.country
        });
        user = await user.save();
        if(!user)
        return res.status(400).send('the user cannot be created!')
    
        res.send(user);
    }
})

const editUser = async(req, res) => {
    const userExist = await User.findById(req.params.id);
    let newPassword
    if(req.body.password) {
        newPassword = bcrypt.hashSync(req.body.password, 10)
    } else {
        newPassword = userExist.passwordHash;
    }

    const user = await User.findByIdAndUpdate(
        req.params.id,
        {
            name: req.body.name,
            email: req.body.email,
            passwordHash: newPassword,
            phone: req.body.phone,
            isAdmin: req.body.isAdmin,
            street: req.body.street,
            apartment: req.body.apartment,
            zip: req.body.zip,
            city: req.body.city,
            country: req.body.country,
        },
        { new: true}
    )

    if(!user)
    return res.status(400).send('the user cannot be created!')

    res.send(user);
}


const deleteUser = async(req, res) => {
    User.findByIdAndRemove(req.params.id).then(user =>{
        if(user) {
            return res.status(200).json({success: true, message: 'the user is deleted!'})
        } else {
            return res.status(404).json({success: false , message: "user not found!"})
        }
    }).catch(err=>{
       return res.status(500).json({success: false, error: err}) 
    })
}

export { authUser, createUser, getUsers, getUser, editUser, deleteUser };