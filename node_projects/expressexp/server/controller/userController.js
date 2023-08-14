import expressAsyncHandler from 'express-async-handler';
import User from '../models/userModel.js';
import bcrypt from 'bcrypt';
import generateToken from '../utils/generateToken.js';


// @desc Auth user & get token
// @route POST /api/user/login
// @access Public

const authUser= expressAsyncHandler(async (req, res) => {
  const { email, password } = req.body;

  /*const data = await User.findById('647f055144b443102c7950c6').select('-password'); 
  res.json(data);
  process.exit(1);*/
  
  const user = await User.findOne({ email });

  const isValidPassword = await bcrypt.compare(password, user.password);
  if (user && isValidPassword) {
    //res.json(isValidPassword);
    
    res.json({
      _id: user._id,
      name: user.name,
      // email: user.email,
      role: user.role,
      token: generateToken(user._id),
    });
  } else {
    res.status(401);
    throw new Error('Invalid email or password');
  }
  
});


// @desc Register a new user
// @route POST /api/user
// @access Private / Admin
const registerUser = expressAsyncHandler(async (req, res) => {
    const { name, email, password, role } = req.body;
  
    const userExists = await User.findOne({ email });

    //const salt = await bcrypt.genSalt(10);

    //const saltRounds = 10;
    //const salt = bcrypt.genSaltSync(saltRounds);
    //const hash = bcrypt.hashSync(myPlaintextPassword, salt);
    
    const hashedPassword = await bcrypt.hash(password, 10);
    //res.json(salt);
    //process.exit(1);
    if (userExists) {
      res.status(400);
      throw new Error('User already exist');
    }
  
    const user = await User.create({
      name,
      email,
      password: hashedPassword,
      role,
    });
  
    if (user) {
      res.status(201).json({
        msg: 'User created successfully!',
      });
    } else {
      res.status(400);
      throw new Error('Invalid user data');
    }
  });
  
  // @desc Get all users
  // @route POST /api/user/
  // @access Private / Admin
const getUsers = expressAsyncHandler(async (req, res) => {
    const users = await User.find().lean();
    res.json(users);
  });

  export {
    authUser,
    registerUser, 
    getUsers
  }

  