import { expressjwt } from "express-jwt";

const secret = process.env.secret;
function authJwt() {
    const secret = process.env.secret;
    const api = process.env.API_URL;
    return expressjwt({
        secret,
        algorithms: ['HS256'],
    }).unless({
        path: [
            { url: `${api}/product`, methods: ['GET', 'OPTIONS'] },
            `${api}/user/login`,
            //'/api/v1/register'
            `${api}/register`,
            `${api}/product/featured-count`,
        ]
    })
}
export default authJwt;