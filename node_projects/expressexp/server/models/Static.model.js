import mongoose from "mongoose";

const SettingsSchema = mongoose.Schema({
    frontend: {
        logo: {
            type: String,
            default: '/images/logo.svg'
        },
        primarySlideHeadingColor: {
            type: String,
            default: '#FFC916',
        },
        secondarySlideHeadingColor: {
            type: String,
            default: '#FFFFFF',
        },
        primarySlideParagraphColor: {
            type: String,
            default: '#FFFFFF',
        },

        primaryHeadingColor: { type: String, default: '#1C4759' },
        primaryParagraphColor: {
            type: String,
            default: '#111111',
        },
        socialMedia: {
            isEnabled: { type: Boolean, default: true },
            facebook: { type: String },
            twitter: { type: String },
            instagram: { type: String },
            linkedin: { type: String },
            youtube: { type: String },
        },

        updatedBy: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
        updatedAt: { type: Date, default: Date.now() },
    },

    // Slider

    sliderHome: {
        isEnabled: { type: Boolean, default: true },
        updatedBy: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
        updatedAt: { type: Date, default: Date.now() },
    },

},
    {
        timestamps: true,
    }
)

const Settings = mongoose.model('Settings', SettingsSchema);
export default Settings;