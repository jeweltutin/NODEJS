import multer from "multer";
import path from 'path';
import { nanoid } from "nanoid";


/* We call the cb function that takes the two arguments. 
The first is error which we are going to pass null to. The second is the destination folder which is public. */

const storage = multer.diskStorage({         
    destination: function (req, file, cb) {
        cb(null, path.join('../storage', 'uploads'));
    },
    filename (req, file, cb) {

        const originalName = file.originalname.replace(/\s+/g, '-');      
        const uniqueId = nanoid(4);
        const extension = path.extname(file.originalname);
        const nameWoutExt = originalName.replace(extension, "");
        //const filename = `${file.fieldname}-${nameWoutExt}-${uniqueId}${extension}`;
        //const myfile = (file.fieldname) + '-' + nameWoutExt + '-' + uniqueId + extension;
        const myfile = nameWoutExt + '-slide-' + uniqueId + extension;
        cb(null, myfile);
    }
});

function checkFileType(file, cb){
    const filetypes = /jpg|jpeg|png|svg|pdf/;
    const fileExtention = filetypes.test(path.extname(file.originalname).toLowerCase());
    const mimetype = filetypes.test(file.mimetype);
    //console.log(file.mimetype);
    
    if (fileExtention && mimetype) {
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