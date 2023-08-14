const jwt = require("jsonwebtoken");

const checkLogin = (req, res, next) => {
    const { authorization } = req.headers;
    try {
        const token = authorization.split(' ')[1];
        const decoded = jwt.verify(token, process.env.JWT_SECRET);
        const { username, userId, role } = decoded;
        req.username = username;
        req.userId = userId;
        req.role = role;
        next();       
    } catch (error) {
        //console.log(error);
        next("Authentication failure!")
    }
};

module.exports = checkLogin;