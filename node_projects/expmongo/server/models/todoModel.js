const mongoose = require('mongoose');

const todoSchema = mongoose.Schema(
    {
        title: { type: String, required: true },
        description: String,
        status: {
            type: String,
            enum: ['active', 'inactive']
        },
        user: {
            //type: mongoose.Types.ObjectId
            //type: mongoose.Schema.ObjectId
            //type: mongoose.Schema.Types.ObjectId,
            type: mongoose.ObjectId,
            ref: 'User'
        },
        date: {
            type: Date,
            default: Date.now
        }
    },
    { 
        timestamps: true 
    }
);

const Todo = mongoose.model('Todo', todoSchema);
// console.log(mongoose.Schema);
module.exports = Todo;