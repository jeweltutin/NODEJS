import { expressjwt } from "express-jwt";
import dotenv from 'dotenv';

dotenv.config();

const secret = process.env.JWT_SECRET;
const api = process.env.API_URL;

/* console.log("JWT_SECRET:", process.env.JWT_SECRET);
if (!secret) {
    throw new Error("JWT_SECRET is not defined in environment variables");
} */

function authJwt() {
    return expressjwt({
        secret,
        algorithms: ['HS256'],
        userProperty: 'user',
    }).unless({
        path: [
            { url: `${api}/product`, methods: ['GET', 'OPTIONS'] },
            { url: `${api}/product/:id`, methods: ['GET', 'OPTIONS'] },
            { url: `${api}/category`, methods: ['GET', 'OPTIONS'] },
            { url: `${api}/category/:id`, methods: ['GET', 'OPTIONS'] },
            `${api}/user/login`,
            `${api}/register`,
            `${api}/product/featured-count`,
        ]
    });
}

// Middleware for role-based access to dashboard
function authorizeRole(roles) {
    return (req, res, next) => {
        const userRole = req.auth?.role;  // Assuming role is decoded in JWT
        console.log(userRole);
        if (!roles.includes(userRole)) {
            return res.status(403).json({ message: "Access forbidden: insufficient permissions" });
        }
        next();
    };
}

/* function authorizeRole(roles) {
    return (req, res, next) => {
        const userRole = req.auth?.role;  // Assuming role is decoded in JWT
        console.log(userRole);
        if (userRole !== 'admin') {  // Only allow 'admin' role
            return res.status(403).json({ message: "Access forbidden: insufficient permissions" });
        }
        next(); // Proceed if user has 'admin' role
    };
} */

export { authJwt, authorizeRole };


// What it does:
// roles.includes(userRole):
// roles is an array that contains the list of allowed roles (for example, ['admin', 'editor', 'customer']).
// userRole is the role of the user that is decoded from the JWT token (e.g., 'admin').
// The .includes() method checks if the userRole is in the roles array.