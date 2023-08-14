import mongoose from 'mongoose';

const newsSchema = new mongoose.Schema(
  {
    thumb: { type: String, required: true },
    cover: { type: String },
    heading: { type: String, required: true },
    summary: { type: String, required: true },
    paragraph: { type: String, required: true },
    sourceLogo: { type: String },
    sourceName: { type: String },
    sourceLink: { type: String },
    updatedBy: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
  },
  { timestamps: true }
);

const News = mongoose.model('News', newsSchema);

export default News;