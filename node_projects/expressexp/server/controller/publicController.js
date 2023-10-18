import expressAsyncHandler from "express-async-handler";
import Settings from "../models/Static.model.js";
import Slide from "../models/Slider.model.js";

// @desc    Get first priority home data
// @route   GET /api/public/landing
// @access  Public
export const getHomeData = expressAsyncHandler(async (req, res) => {
    try {
        const settingsData = await Settings.findOne({});
        console.log(settingsData);
        const homeData = {};
        if (settingsData.sliderHome.isEnabled) {
            const slide = await Slide.find({ isActive: true })
                .sort({ priority: 1 })
                .select(`image link headingOne headingTwo paragraph -_id`)
                .lean();
            homeData.slides = slide;
        }

        res.json(homeData);
    } catch (error) {
        console.log(error);
        res.status(500).json({ message: 'Server Error' });
    }
})