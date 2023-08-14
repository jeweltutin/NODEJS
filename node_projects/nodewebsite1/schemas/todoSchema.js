const mongoose = require("mongoose");

const todoSchema = mongoose.Schema({
    title: {
        type: String,
        required: true
    },
    description: String,
    status: {
        type: String,
        enum: ["active", "inactive"]
    },
    date: {
        type: Date,
        default: Date.now
    },
    user_id: {
        type: mongoose.Types.ObjectId,
        ref: "User"
    }
});

// Instance methods
todoSchema.methods = {
    findInactive: function(){
        return mongoose.model("Todo").find({status: 'inactive'});
    },
    findActive: function(){
        return mongoose.model("Todo").find({status: 'active'});
    },
    /* findActive: function(cb){
        return mongoose.model("Todo").find({status: 'active'}, cb);
    } */
}

// Static methods
todoSchema.statics = {
    findByName: function(){
        return this.find({title: /ult/i});
    }
}

// Query helpers
todoSchema.query = {
    byTitle: function(ttl){
        return this.find({title: new RegExp(ttl, "i")});
    }
}

module.exports = todoSchema;