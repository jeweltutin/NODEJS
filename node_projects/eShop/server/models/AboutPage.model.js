import mongoose from "mongoose";

const aboutSchema = new mongoose.Schema({
    title: {
        type: String,
        required: true
    },
    banner: {
        type: String, // Store image URL
        required: true
    },
    body: {
        type: String, // Markdown content
        required: true
    }
}, { timestamps: true });

const About = mongoose.model("About", aboutSchema);
export default About;
