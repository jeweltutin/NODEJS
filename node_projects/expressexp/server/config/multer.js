import multer from "multer";
import path from 'path';
import { nanoid } from "nanoid";


const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, path.join('./storage', 'uploads'));
    },
    filename (req, file, cb) {
        const originalName = file.originalname.replace(/\s+/g, '-');      
        const uniqueId = nanoid(4);
        const extension = path.extname(file.originalname);
        const nameWoutExt = originalName.replace(extension, "");
        //const filename = `${file.fieldname}-${nameWoutExt}-${uniqueId}${extension}`;
        const myfile = (file.fieldname) + '-' + nameWoutExt + '-' + uniqueId + extension;
        cb(null, myfile);
    }
});

function checkFileType(file, cb){
    const filetypes = /jpg|jpeg|png|svg|pdf/;
    const fileExtention = filetypes.test(path.extname(file.originalname).toLowerCase());
    const mimeType = filetypes.test(file.mimetype);

    if (fileExtention && mimeType) {
        return cb(null, true);
    } else{
        cb('Not Supported. Please upload valid file');
    }
}


const uploadFile = multer({
    storage,
    limits: {
        fileSize: 1000000  // 1MB
    },
    fileFilter: (req, file, cb) => {
        checkFileType(file, cb);
    },
    onError: function (err, next) {
        console.log('error', err);
        next(err);
    }
});

export default uploadFile;