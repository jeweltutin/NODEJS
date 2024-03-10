import { expressjwt } from "express-jwt";

const secret = process.env.secret;
function authJwt() {
    const secret = process.env.secret;
    //const api = process.env.API_URL;
    return expressjwt({
        secret,
        algorithms: ['HS256'],
    }).unless({
        path: [
            '/api/v1/user/login',
            '/api/v1/user',
            '/api/v1/register'
        ]
    })
}
export default authJwt;