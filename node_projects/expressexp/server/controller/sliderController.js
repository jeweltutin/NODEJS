import expressAsyncHandler from "express-async-handler";
import Slide from "../models/Slider.model.js";
import fs from 'fs';

// @desc  get homepage slides
// @route GET /api/slider
// @access Public


const getHomeSlides = expressAsyncHandler(async (req, res) => {
    const slides = await Slide.find();

    res.json(slides);
});

// @desc    add new home slide
// @route   POST /api/slider/add
// @access  Private/Marketing

const createHomeSlide = expressAsyncHandler(async (req, res) => {
    const { link, headingOne, headingTwo, paragraph } = req.body;
    //const link = req.body.link;

    const imgfile = req.files.image;
    //console.log(imgfile);
    //const image = imgfile[0].path.substring(2).replace(/\\/g, '/');
    const image = imgfile[0].path.replace(/\\/g, '/');
    const priority = (await Slide.countDocuments({})) + 1;   // A record in MongoDB is a document

    const newSlide = new Slide({
        priority,
        isActive: true,
        image,
        link,
        headingOne,
        headingTwo,
        paragraph,
        //updatedBy: req.userData._id
    });

    try {
        await newSlide.save();
        res.status(201).json({
            success: true,
            message: 'New Slide Added!',
        })
    } catch (error) {
        res.status(401).json({
            success: false,
            data: 'Slide not added :('
        })
    }

})

// @desc    update Home Slide
// @route   PUT /api/landing-cover/:id
// @access  Private/Marketing
export const updateHomeSlide = expressAsyncHandler(async (req, res) => {
    //console.log("update slide");
    //const { id } = req.params;
    const id = req.params.id;
    //console.log(id);
    //res.json(id);
    const updatedData = req.body;
    //console.log(updatedData);


    const file = req.files.image;
    // console.log(file);      // file full info will show

    const findSlide = await Slide.findById(id);
    if (findSlide) {
        if (file) {
            //res.json("record found");
            const theImage = file[0].path.replace(/\\/g, '/');
            console.log(theImage);
            //process.exit(1);
            fs.unlink(findSlide.image, (err) => {
                if (err) {
                    console.error('Error: ', err);
                } else {
                    console.log('File deleted successfully');
                }
            });
            updatedData.image = theImage;
        }
        //updatedData.updatedBy = req.userData._id;
        //updatedData.updatedBy = '12345';
        updatedData.updatedAt = Date.now();

        await Slide.findByIdAndUpdate(id, {$set: updatedData});

        res.json({
            success: true,
            findSlide: 'Slide updated Successfully!'
        });
    }
    else {
        res.status(401);
        throw new Error('Slide not found!');
    }
})

// @desc    delete Slide
// @route   DELETE /api/slide/:id
// @access  Private/Marketing
const deleteSlide = expressAsyncHandler(async (req, res) => {
    const { id } = req.params;
    const slideData = await Slide.findById(id);
    if (slideData) {
        fs.unlink(slideData.image, (err) => {
            if (err) {
                console.error('Error', err);
                return;
            } else {
                console.log('File deleted successfully');
            }
        });
        await Slide.deleteOne({ _id: slideData._id });
        res.json({
            success: true,
            data: 'Slide deleted successfully!',
        });
    } else {
        res.status(401);
        throw new Error('Slide not found!');
    }
})

export { getHomeSlides, createHomeSlide, deleteSlide }