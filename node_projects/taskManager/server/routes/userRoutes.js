import express from "express";
import { isAdminRoute, protectRoute } from "../middlewares/auth.js";
import { activateUserProfile, changeUserPassword, deleteUserProfile, getNotificationsList, getTeamList, getActiveTeamList, loginUser, logoutUser, markNotificationRead, registerUser, updateUserProfile } from "../controller/userController.js";

const router = express.Router();

router.post("/register", registerUser);
router.post("/login", loginUser);
router.post("/logout", logoutUser);

router.get("/get-team", protectRoute, isAdminRoute, getTeamList);
router.get("/select-team", protectRoute, isAdminRoute, getActiveTeamList);
router.get("/notifications", protectRoute, getNotificationsList);

router.put("/profile", protectRoute, updateUserProfile);
router.put("/read-noti", protectRoute, markNotificationRead);
router.put("/change-password", protectRoute, changeUserPassword);

// //   FOR ADMIN ONLY - ADMIN ROUTES
router
    .route("/:id")
    .put(protectRoute, isAdminRoute, activateUserProfile)
    .delete(protectRoute, isAdminRoute, deleteUserProfile); 


export default router; 



//http://localhost:8800/api/user/select-team