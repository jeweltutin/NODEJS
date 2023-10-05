import mongoose from "mongoose";


const sliderSchema = new mongoose.Schema(
    {
        headingOne: { type: String, required: true },
        headingTwo: { type: String, required: true },
        image: { type: String, required: true },
        link: { type: String },
        priority: { type: Number, required:true, default: 0 },
        isActive: { type: Boolean, default: true },
        paragraph: { type: String},
    },
    {
        timestamps: true
    }
)

const Slide = mongoose.model('Slider', sliderSchema);
export default Slide;