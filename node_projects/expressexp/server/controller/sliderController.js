import expressAsyncHandler from "express-async-handler";
import Slide from "../models/Slider.model.js";

// @desc  get homepage slides
// @route GET /api/slider
// @access Public


const getHomeSlides = expressAsyncHandler((req,res) => {
    const slides = Slide.find();

    res.json(slides);
});

// @desc    create landing cover
// @route   POST /api/slider/
// @access  Private/Marketing

const createHomeSlide = expressAsyncHandler((req,res) => {
    const { link, headingOne, headingTwo, paragraph, image } = req.body;

    //const link = req.body.link;

    //const imgfile = req.files.image;
    const file = req.files.image;
    console.log(file[0]);

    console.log(headingOne);

    process.exit(1);

    const newSlide = new Slide({
        priority: 10,
        isActive: true,
        image,
        link,
        headingOne,
        headingTwo,
        paragraph,
    });

    newSlide.save();

    res.status(201).json({
        success: true,
        message: 'New Slide Added!',
    }); 

})

export { getHomeSlides, createHomeSlide }