import { expressjwt } from "express-jwt";

const secret = process.env.JWT_SECRET;
const api = process.env.API_URL;

function authJwt() {
    return expressjwt({
        secret,
        algorithms: ['HS256'],
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
        const userRole = req.user?.role;  // Assume role is decoded in the JWT payload

        if (!roles.includes(userRole)) {
            // Deny access and redirect if the role doesn't match
            return res.status(403).json({ message: "Access forbidden: insufficient permissions" });
        }
        next(); // Proceed if role is authorized
    };
}

export { authJwt, authorizeRole };
