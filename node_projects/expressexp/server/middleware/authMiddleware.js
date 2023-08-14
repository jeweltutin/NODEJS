import jwt from "jsonwebtoken";
import asyncHandler from 'express-async-handler';
import User from "../models/userModel.js";


const protect = asyncHandler(async (req, res, next) => {
    let token;
    if (req.headers.authorization && req.headers.authorization.startsWith('Bearer')) {
        //res.json('Auth checking');
        try {
            token = req.headers.authorization.split(' ')[1];
            //res.json(token);
            const decoded = jwt.verify(token, process.env.JWT_SECRET);

            req.userData = await User.findById(decoded.id).select('-password');

            //const userData = await User.findById(decoded.id).select('-password');
            //res.json(userData);
            //res.json(userData.email);
            
            next();
        } catch (error) {
            console.error(error);
            //res.status(401).json(error.message);
            res.status(401);
            throw new Error('Not Authorize, token failed');
        }
    }
    if (!token) {
        res.status(401);
        throw new Error('Not authorized, no token');
    }
});

const admin = (req, res, next)=> {
    if (req.userData && req.userData.role === 'admin') {
        //res.json(req.userData);
        next();
    } else {
        res.status(401);
        throw new Error('Not authorized as an Admin');
    }
};

const hr = (req, res, next) => {
    if (req.userData && req.userData.role === 'hr') {
      next();
    } else {
      res.status(401);
      throw new Error('Not authorized as hr');
    }
  };

  const marketing = (req, res, next) => {
    if (req.userData && req.userData.role === 'marketing') {
      next();
    } else {
      res.status(401);
      throw new Error('Not authorized as marketing');
    }
  };

export {
    protect,
    admin
}