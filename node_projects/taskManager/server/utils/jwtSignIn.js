import jwt from "jsonwebtoken";

export const createJWT = (res, userId) => {
    const token = jwt.sign({ userId }, process.env.JWT_SECRET, {
        expiresIn: "1d",
    });

    // Change sameSite from strict to none when you deploy your app
    res.cookie("token", token, {
        httpOnly: true,
        secure: process.env.NODE_ENV !== "development",
        //sameSite: "strict", //prevent CSRF attack
        //sameSite: "none",    //"none" only works if secure: true. If you are in development mode and not serving over HTTPS, change it to "lax"
		sameSite: "lax", // works in non-secure development environments
        maxAge: 1 * 24 * 60 * 60 * 1000, //1 day
    });
};