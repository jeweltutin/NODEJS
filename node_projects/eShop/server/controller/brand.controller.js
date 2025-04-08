import expressAsyncHandler from "express-async-handler";
import Brand from "../models/Brand.model.js";
import path from "path";
import fs from "fs";
import slugify from "slugify";


/* const createBrand = expressAsyncHandler(async(req,res) => {
    const { name, logo, banner } = req.body;
    let brand = new Brand({
        name, logo, banner
    });
    brand = await brand.save();
    if (!brand) {
        res.status(400).json('Brand not created!')
    }
    res.status(201).json(brand);
}) */

const createBrand = expressAsyncHandler(async (req, res) => {
    const { name } = req.body;
    // Get the file paths
    const logo = req.files?.logo?.[0]?.filename; // req.files?.logo?.[0]?.path; File path for the logo image
    const banner = req.files?.banner?.[0]?.filename; // File path for the banner image

    /*  if (!logo || !banner) {
         return res.status(400).json({ message: "Logo and banner are required!" });
     } */

    try {
        let brand = new Brand({ name, logo, banner });
        brand = await brand.save();

        res.status(201).json(brand);
    } catch (error) {
        if (error.code === 11000) {
            // MongoDB duplicate key error
            return res.status(400).json({ message: 'Brand name already exists' });
        }

        // General server error
        res.status(500).json({ message: 'Something went wrong', error });
    }
});

const getBrands = expressAsyncHandler(async (req, res) => {
    try {
        // You can add pagination and sorting here if necessary
        const brands = await Brand.find();  // Retrieves all brands

        if (!brands.length) {
            return res.status(404).json({ message: 'No brands found' });
        }

        res.status(200).json(brands);
    } catch (error) {
        res.status(500).json({ message: 'Something went wrong', error });
    }
});

/* const getBrands = expressAsyncHandler(async (req, res) => {
    const { page = 1, limit = 10, sortBy = 'name' } = req.query;  // Default page 1, limit 10, sorting by 'name'

    try {
        // Use pagination with 'skip' and 'limit' based on query parameters
        const brands = await Brand.find()
            .sort({ [sortBy]: 1 })  // 1 for ascending, -1 for descending sorting
            .skip((page - 1) * limit)  // Skip records based on page number
            .limit(limit);  // Limit the number of records per page

        if (!brands.length) {
            return res.status(404).json({ message: 'No brands found' });
        }

        res.status(200).json(brands);
    } catch (error) {
        res.status(500).json({ message: 'Something went wrong', error });
    }
}); */



const getSingleBrand = expressAsyncHandler(async (req, res) => {
    const { brandId } = req.params;  // Brand ID passed in the URL

    try {
        const brand = await Brand.findById(brandId);

        if (!brand) {
            return res.status(404).json({ message: 'Brand not found' });
        }

        res.status(200).json(brand);
    } catch (error) {
        res.status(500).json({ message: 'Something went wrong', error });
    }
});


/* const updateBrand = expressAsyncHandler(async (req, res) => {
    const { name } = req.body;
    const { brandId } = req.params;  // Assuming brand ID is passed in the URL

    // Get the file paths (only if files are provided)
    const logo = req.files?.logo?.[0]?.filename;
    const banner = req.files?.banner?.[0]?.filename;

    try {
        // Find the brand by its ID and update
        let updatedBrand = await Brand.findByIdAndUpdate(
            brandId,
            {
                name,
                logo: logo || undefined,  // Only update if logo is provided
                banner: banner || undefined,  // Only update if banner is provided
            },
            { new: true }  // Return the updated brand
        );

        if (!updatedBrand) {
            return res.status(404).json({ message: 'Brand not found' });
        }

        res.status(200).json(updatedBrand);
    } catch (error) {
        res.status(500).json({ message: 'Something went wrong', error });
    }
}); */

/* const updateBrand = expressAsyncHandler(async (req, res) => {
    const { name } = req.body;
    const { brandId } = req.params;

    // Get uploaded files (if any)
    const newLogo = req.files?.logo?.[0]?.filename;
    const newBanner = req.files?.banner?.[0]?.filename;

    try {
        const brand = await Brand.findById(brandId);
        if (!brand) {
            return res.status(404).json({ message: 'Brand not found' });
        }

        // Delete previous logo if new logo uploaded
        if (newLogo && brand.logo) {
            const oldLogoPath = path.join('public', 'images', brand.logo);
            if (fs.existsSync(oldLogoPath)) {
                fs.unlinkSync(oldLogoPath);
                console.log('Old logo deleted:', brand.logo);
            }
        }

        // Delete previous banner if new banner uploaded
        if (newBanner && brand.banner) {
            const oldBannerPath = path.join('public', 'images', brand.banner);
            if (fs.existsSync(oldBannerPath)) {
                fs.unlinkSync(oldBannerPath);
                console.log('Old banner deleted:', brand.banner);
            }
        }

        // Update brand fields
        brand.name = name || brand.name;
        brand.slug = slugify(name || brand.name, { lower: true });
        if (req.body.slug) {
            brand.slug = slugify(req.body.slug, { lower: true });
        } else if (name && name !== brand.name) {
            brand.slug = slugify(name, { lower: true });
        }
        if (newLogo) brand.logo = newLogo;
        if (newBanner) brand.banner = newBanner;

        const updatedBrand = await brand.save();
        res.status(200).json(updatedBrand);
    } catch (error) {
        //res.status(500).json({ message: 'Something went wrong', error });
        console.error('Update error:', error); // 🔥 log full stack
        res.status(500).json({ message: 'Something went wrong', error: error.message });
    }
}); */

const updateBrand = expressAsyncHandler(async (req, res) => {
    const { name } = req.body;
    const { brandId } = req.params;

    // Get uploaded files (if any)
    const newLogo = req.files?.logo?.[0]?.filename;
    const newBanner = req.files?.banner?.[0]?.filename;

    try {
        const brand = await Brand.findById(brandId);
        if (!brand) {
            return res.status(404).json({ message: 'Brand not found' });
        }

        console.log('Existing brand:', brand); // Log the brand data

        // Delete previous logo if new logo uploaded
        if (newLogo && brand.logo) {
            const oldLogoPath = path.join('public', 'images', brand.logo);
            if (fs.existsSync(oldLogoPath)) {
                fs.unlinkSync(oldLogoPath);
                console.log('Old logo deleted:', brand.logo);
            } else {
                console.log('No old logo found to delete');
            }
        }

        // Delete previous banner if new banner uploaded
        if (newBanner && brand.banner) {
            const oldBannerPath = path.join('public', 'images', brand.banner);
            if (fs.existsSync(oldBannerPath)) {
                fs.unlinkSync(oldBannerPath);
                console.log('Old banner deleted:', brand.banner);
            } else {
                console.log('No old banner found to delete');
            }
        }

        // Debug the incoming request body and files
        console.log('Request body:', req.body);
        console.log('Uploaded logo:', newLogo);
        console.log('Uploaded banner:', newBanner);

        // Update brand fields
        if (req.body.slug) {
            brand.slug = slugify(req.body.slug, { lower: true });
            console.log('Slug updated from request:', brand.slug);
        } else if (name && name !== brand.name) {
            brand.slug = slugify(name, { lower: true });
            console.log('Slug updated from name:', brand.slug);
        }
        
        if (newLogo) {
            brand.logo = newLogo;
            console.log('Logo updated:', brand.logo);
        }
        
        if (newBanner) {
            brand.banner = newBanner;
            console.log('Banner updated:', brand.banner);
        }

        // Update the name if it's not the same as the current one
        if (name && name !== brand.name) {
            brand.name = name;
            console.log('Name updated:', brand.name);
        }

        const updatedBrand = await brand.save();
        res.status(200).json(updatedBrand);

    } catch (error) {
        console.error('Update error:', error); // Log the full stack trace
        res.status(500).json({ message: 'Something went wrong', error: error.message });
    }
});


/* const deleteBrand = expressAsyncHandler(async (req, res) => {
    const { brandId } = req.params;  // Brand ID passed in the URL

    try {
        const deletedBrand = await Brand.findByIdAndDelete(brandId);

        if (!deletedBrand) {
            return res.status(404).json({ message: 'Brand not found' });
        }

        res.status(200).json({ message: 'Brand deleted successfully' });
    } catch (error) {
        res.status(500).json({ message: 'Something went wrong', error });
    }
}); */

const deleteBrand = expressAsyncHandler(async (req, res) => {
    const { brandId } = req.params;

    const brand = await Brand.findById(brandId);

    if (!brand) {
        return res.status(404).json({ message: "Brand not found" });
    }

    // Remove images from filesystem
    const deleteImage = (imagePath) => {
        if (imagePath) {
            const fullPath = path.join("public", "images", imagePath);
            fs.unlink(fullPath, (err) => {
                if (err) {
                    console.error(`Error deleting file: ${fullPath}`, err);
                }
            });
        }
    };

    deleteImage(brand.logo);
    deleteImage(brand.banner);

    // Remove brand from DB
    await brand.deleteOne();

    res.status(200).json({ message: "Brand deleted successfully" });
});


export { getBrands, getSingleBrand, createBrand, updateBrand, deleteBrand }
