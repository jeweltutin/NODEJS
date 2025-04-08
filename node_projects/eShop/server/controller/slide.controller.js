import fs from "fs";
import path from "path";
import Slide from "../models/Slide.model.js";

// Get all active slides (Public)
export const getSlides = async (req, res) => {
    try {
        //const slides = await Slide.find({ isActive: true }).sort({ createdAt: -1 });
        const slides = await Slide.find().sort({ createdAt: -1 });
        res.json(slides);
    } catch (error) {
        res.status(500).json({ message: "Failed to fetch slides", error });
    }
};

export const getSlideById = async (req, res) => {
    try {
        const { id } = req.params; // Get the slide ID from the route parameter
        const slide = await Slide.findById(id); // Find the slide by ID
        
        if (!slide) {
            return res.status(404).json({ message: "Slide not found" });
        }
        
        res.json(slide); // Return the found slide
    } catch (error) {
        res.status(500).json({ message: "Failed to fetch slide", error });
    }
};

// Create a new slide (Admin only)
/* export const createSlide = async (req, res) => {
    try {
        const { name, url, priority, isActive } = req.body;
        const image = req.file ? `/images/${req.file.filename}` : null; // ✅ Get image path

        if (!image) {
            return res.status(400).json({ message: "Image is required." });
        }
        const newSlide = new Slide({ name, image, url, priority, isActive });
        await newSlide.save();
        res.status(201).json({ message: "Slide created successfully", slide: newSlide });
    } catch (error) {
        res.status(400).json({ message: "Failed to create slide", error });
    }
}; */

export const createSlide = async (req, res) => {
    try {
        // ✅ Check if an image file was uploaded
        if (!req.file) {
            return res.status(400).json({ message: "Image is required." });
        }

        const { name, url, priority, isActive } = req.body;
        const image = `/images/${req.file.filename}`; // ✅ Construct image path

        // ✅ Validate required fields
        /* if (!name || !url) {
            return res.status(400).json({ message: "Name and URL are required." });
        }  */

        if (!name) {
            return res.status(400).json({ message: "Name is required." });
        }

        // ✅ Check for duplicate entry (based on 'name' or 'url')
        //const existingSlide = await Slide.findOne({ $or: [{ name }, { url }] });
        const existingSlide = await Slide.findOne({ name });
        if (existingSlide) {
            return res.status(409).json({ message: "Slide with this name already exists." });
        }

        // ✅ Create and save the slide
        const newSlide = new Slide({ name, image, url, priority, isActive });
        await newSlide.save();

        res.status(201).json({ message: "Slide created successfully", slide: newSlide });
    } catch (error) {
        console.error("Error creating slide:", error);
        res.status(500).json({ message: "Internal server error" });
    }
};

// Update a slide (Admin only)
/* export const updateSlide = async (req, res) => {
    try {
        const { id } = req.params;
        const updatedSlide = await Slide.findByIdAndUpdate(id, req.body, { new: true });
        if (!updatedSlide) return res.status(404).json({ message: "Slide not found" });
        res.json({ message: "Slide updated successfully", slide: updatedSlide });
    } catch (error) {
        res.status(400).json({ message: "Failed to update slide", error });
    }
}; */


/* export const updateSlide = async (req, res) => {
    try {
        const { id } = req.params;
        const slide = await Slide.findById(id);
        if (!slide) return res.status(404).json({ message: "Slide not found" });

        // Extract updated values
        const { name, url, priority, isActive } = req.body;
        console.log("Name", name);
        let image = slide.image; // Keep the existing image if no new file is uploaded
        console.log(image);
        console.log("New Image:", req.file);
        // Check if a new file is uploaded
        if (req.file) {
            // Delete old image if exists
            if (slide.image) {
                fs.unlink(`public${slide.image}`, (err) => {
                    if (err) console.error("Failed to delete old image:", err);
                });
            }
            image = `/images/${req.file.filename}`; // Set new image path
            
        }

        // Update slide
        slide.name = name || slide.name;
        slide.url = url || slide.url;
        slide.priority = priority || slide.priority;
        slide.isActive = isActive !== undefined ? isActive : slide.isActive;
        slide.image = image;

        await slide.save();

        res.json({ message: "Slide updated successfully", slide });
    } catch (error) {
        res.status(400).json({ message: "Failed to update slide", error });
    }
};
 */

export const updateSlide = async (req, res) => {
    const { id } = req.params;

    try {
        // ✅ Find the slide by ID
        const slideData = await Slide.findById(id);

        if (!slideData) {
            return res.status(404).json({ message: "Slide not found!" });
        }

        // ✅ Check if a new image is provided
        let updatedImage = slideData.image; // Retain the current image if no new one is provided

        if (req.file) {
            // ✅ Delete old image file if a new one is provided
            const oldImagePath = path.join("public", slideData.image);
            if (fs.existsSync(oldImagePath)) {
                fs.unlinkSync(oldImagePath); // Delete old image file
                console.log("Old image deleted:", oldImagePath);
            }

            // ✅ Update with the new image
            updatedImage = `/images/${req.file.filename}`;
        }

        // ✅ Update slide with new data, including the new image if provided
        const updatedSlide = await Slide.findByIdAndUpdate(id, {
            ...req.body, // Updated fields from the request body
            image: updatedImage, // Updated image if provided
        }, { new: true });

        if (!updatedSlide) {
            return res.status(404).json({ message: "Slide update failed!" });
        }

        res.json({
            message: "Slide updated successfully",
            slide: updatedSlide,
        });
    } catch (error) {
        console.error("Error updating slide:", error);
        res.status(400).json({ message: "Failed to update slide", error: error.message });
    }
};
// Delete a slide (Admin only)
/* export const deleteSlide = async (req, res) => {
    try {
        const { id } = req.params;
        const deletedSlide = await Slide.findByIdAndDelete(id);
        if (!deletedSlide) return res.status(404).json({ message: "Slide not found" });
        res.json({ message: "Slide deleted successfully" });
    } catch (error) {
        res.status(400).json({ message: "Failed to delete slide", error });
    }
}; */

export const deleteSlide = async (req, res) => {
    const { id } = req.params;

    try {
        const slideData = await Slide.findById(id);

        if (!slideData) {
            return res.status(404).json({ message: "Slide not found!" });
        }

        // ✅ Get absolute image path
        const imagePath = path.join("public", slideData.image);

        // ✅ Check if file exists before deleting
        if (fs.existsSync(imagePath)) {
            fs.unlinkSync(imagePath); // Deletes file synchronously
            console.log("File deleted successfully");
        }

        // ✅ Delete slide from DB after file is removed
        await Slide.deleteOne({ _id: slideData._id });

        return res.json({
            success: true,
            data: "Slide deleted successfully!",
        });
    } catch (error) {
        console.error("Error deleting slide:", error);
        return res.status(500).json({ message: "Failed to delete slide", error });
    }
};
