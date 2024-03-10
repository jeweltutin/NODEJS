//const mongoose = require('mongoose');
import mongoose from 'mongoose';

const categorySchema = mongoose.Schema({
    name: {
        type: String,
        required: true,
    },
    icon: {
        type: String,
    },
    color: { 
        type: String,
    }
})


/* categorySchema.virtual('id').get(function () {
    return this._id.toHexString();
});

categorySchema.set('toJSON', {
    virtuals: true,
}); */

//exports.Category = mongoose.model('Category', categorySchema);
const Category = mongoose.model('Category', categorySchema);

export default Category;


