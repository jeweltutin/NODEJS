import expressAsyncHandler from "express-async-handler";
import Movie from "../models/movieModel.js";

const addMovie = expressAsyncHandler(async (req, res) => {
    //console.log("I am here");
    //process.exit(1);
    const { rank, title, thumbnail, poster, genre, rating, year, director, description } = req.body;

    const movie = new Movie({
        rank,
        title,
        thumbnail,
        poster,
        genre,
        rating,
        year,
        director,
        description
    });

    await movie.save();
    res.status(201).json({
        success: true,
        message: 'New movie added Successfully'
    })
})

const getAllMovies = expressAsyncHandler(async (req, res) => {
    const movies = await Movie.find();
    res.json(movies);
})

const deleteMovie = expressAsyncHandler(async (req, res) => {
    //res.json(req.params.id);
    
    //res.json(getTheMovie._id);
    //res.json(getTheMovie);
    //console.log("Hello world");
    
    try {
        const getTheMovie = await Movie.findById(req.params.id);
        await Movie.deleteOne({ _id: getTheMovie._id });
        res.json({
            success: true,
            message: 'Movie deleted successfully'
        })
    } catch (error) {
        res.status(404);
        throw new Error('News not found');
    }

    // if (getTheMovie) {
    //     res.json("Nice");
    //     process.exit(1);
    //     await Movie.deleteOne({ _id: getTheMovie._id });
    //     res.json({
    //         success: true,
    //         message: 'Movie deleted successfully'
    //     })
    // } else {
    //     res.json("From else part");
    //     process.exit(1);
    //     res.status(404);
    //     throw new Error('News not found');
    // }

})

export { addMovie, getAllMovies, deleteMovie };