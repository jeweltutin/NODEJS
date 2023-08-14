import mongoose from 'mongoose'

const movieSchema = new mongoose.Schema(
    {
        rank: Number,
        title: {
            type: String,
            required: true
        },
        thumbnail: String,
        poster: String,
        genre: String,
        rating: Number,
        year: Number,
        director: String,
        description: String
    },
    {
        timestamps: true
    }
);

const Movie = mongoose.model('Movie', movieSchema);
export default Movie;