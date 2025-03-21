import { expressjwt } from "express-jwt";

const secret = process.env.JWT_SECRET;
function authJwt() {
    //const secret = process.env.secret;
    const api = process.env.API_URL;
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
    })
}
export default authJwt;