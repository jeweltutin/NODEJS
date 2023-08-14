import mongoose from "mongoose";
import validator from "validator";

const UserSchema = mongoose.Schema(
    {
      name: {
        type: String,
        required: true,
        minLength: [3, 'Your name must be at least 3 characters long'],
      },
      email: {
        type: String,
        required: true,
        unique: [true, 'Account already exists'],
        validate: [validator.isEmail, 'Please enter a valid email'],
      },
      password: {
        type: String,
        required: [true, 'Please enter your password'],
        minLength: [6, 'Your password must be at least 6 characters long'],
      },
      role: {
        type: String,
        required: true,
        enum: ['marketing', 'hr', 'admin'],
      },
      isBanned: { type: Boolean, default: false },
    },
    { timestamps: true }
  );

const User = mongoose.model('User', UserSchema);

export default User;