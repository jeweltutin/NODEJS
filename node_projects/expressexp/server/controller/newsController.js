import expressAsyncHandler from "express-async-handler";
import News from "../models/newsModel.js";
import fs from 'fs';


// @desc    create a news
// @route   POST /api/news/
// @access  Private/Marketing

export const createNews = expressAsyncHandler(async (req, res) => {
    const { heading, summary, paragraph, sourceName } = req.body;
  
    //res.json(req.body.heading);
    //res.json(req.userData._id);
    //const thumb = "myimage.jpg";
    //process.exit(1);
    const file = req.files.thumb;
    const file2 = req.files.logo;
    const file3 = req.files.cover;

    //console.log(file[0]);
    //console.log(path);
    //const thumb = file[0].path.substring(2).replace(/\\/g, '/');
    const thumb = file[0].path.replace(/\\/g, '/');
    //console.log(thumb);
    let sourceLogo, cover;
    if (file2) {
         sourceLogo = file2[0].path.replace(/\\/g, '/');
    } else {
        sourceLogo = undefined;
    }
    if (file3) {
        cover = file3[0].path.replace(/\\/g, '/');
    } else{
        cover = undefined;
    }
    //process.exit(1);
    
    const news = new News({
        thumb,
        cover,
        heading,
        summary,
        paragraph,
        sourceName,
        sourceLogo,
        updatedBy: req.userData._id,
    });
    await news.save();
    res.status(201).json({
        success: true,
        message: 'News created successfully!',
    });
});

// @desc    Get all news
// @route   GET /api/news/
// @access  Public
export const getAllNews = expressAsyncHandler(async (req, res) => {
    const news = await News.find({}).lean();
    res.json(news);
  });

// @desc    Get a news
// @route   GET /api/news/:id
// @access  Public
export const getNews = expressAsyncHandler(async (req, res) => {
    const news = await News.findById(req.params.id);
    if (news) {
        res.json(news);
    } else {
        res.status(404);
        throw new Error('News not found');
    }
});

// @desc    Update a news
// @route   PUT /api/news/:id
// @access  Private/Marketing
export const updateNews = expressAsyncHandler(async (req, res) => {
    const news = await News.findById(req.params.id);

    //console.log(req.userData._id);
    //process.exit(1);

    const updatedData = req.body;
    const file = req.files.thumb;
    const file2 = req.files.logo;
    const file3 = req.files.cover;

    if (news) {
        if (file) {
            const image = file[0].path.replace(/\\/g, '/');
            fs.unlink(news.thumb, (err) => {
            //fs.unlink(`${news.thumb}`, (err) => {
                if(err){
                    console.error("Error:", err);
                    return;
                }
                console.log('Thumb deleted successfully');
            });
            news.thumb = image;
        }  

        if (file2) {
            const image = file2[0].path.replace(/\\/g, '/');
            fs.unlink(news.sourceLogo, (err) => {
                if (err) {
                    console.error("Error:", err);
                    return;
                }
                console.log('Thumb deleted successfully');
            });
            news.sourceLogo = image;
        } else {
            
        }
        if (file3) {
            const image = file3[0].path.replace(/\\/g, '/');
            fs.unlink(news.cover, (err) => {
                if (err) {
                    console.error("Error:", err);
                    return;
                }
                console.log('Thumb deleted successfully');
            });
            news.cover = image;
        } else {
            
        }
        
        updatedData.updatedBy = req.userData._id;
        await news.updateOne({ $set: updatedData });
        await news.save();

        res.json({
            success: true,
            message: 'News updated successfully'
        });
    } else {
        res.status(404);
        throw new Error('News not found');
    }
});

// @desc    Delete a news
// @route   DELETE /api/news/:id
// @access  Private/Marketing
export const deleteNews = expressAsyncHandler(async (req, res) => {
    const news = await News.findById(req.params.id);
    if(news){
        //fs.unlink(`..${news.thumb}`, (err) => {
        fs.unlink(`${news.thumb}`, (err) => {
            if(err) {
                console.log('Error:', err);
                return;
            }
            console.log('File deleted successfully');
        });
        if (news.sourceLogo) {
            fs.unlink(`${news.sourceLogo}`, (err) => {
              if (err) {
                console.error('Error:', err);
                return;
              }
              //   console.log('File deleted successfully');
            });
        }     
        if (news.cover) {
            fs.unlink(`${news.cover}`, (err) => {
                if (err) {
                console.error('Error:', err);
                return;
                }
                //   console.log('File deleted successfully');
            });
        }
        await News.deleteOne({ _id: news._id });
        res.json({
            success: true,
            message: 'News deleted successfully!',
        });
    }else {
        res.status(404);
        throw new Error('News not found');
  }
})