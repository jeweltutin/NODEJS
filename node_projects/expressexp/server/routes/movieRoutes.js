import { Router } from "express";
import  { addMovie, getAllMovies, deleteMovie }  from "../controller/movieController.js";

const router = Router();

router.route('/add').post(addMovie);
router.route('/').get(getAllMovies);
router.route('/:id').delete(deleteMovie);

export default router;