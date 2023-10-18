//import mongoose from 'mongoose';
import dotenv from 'dotenv';
import colors from 'colors';
//import { faker } from '@faker-js/faker';
// import Admin from './models/admin.Model.js';
import Static from './models/Static.model.js';
import connectDB from './config/db.js';

dotenv.config();

connectDB();

const importData = async () => {
  try {
    await Static.deleteMany();
    // Create your data object for the Static collection
    const staticData = {
      logo: {
        image: '/images/logo.svg',
        link: '/',
      },
      colors: {
        brandColor: '#FFC916',
        primaryCoverHeadingColor: '#FFC916',
        secondaryCoverHeadingColor: '#FFFFFF',
        primaryCoverParagraphColor: '#FFFFFF',
        primaryHeadingColor: '#1C4759',
        primaryParagraphColor: '#111111',
      },
      socialMedia: {
        isEnabled: true,
        facebook: 'https://www.facebook.com/yourpage',
        twitter: 'https://www.twitter.com/yourpage',
        instagram: 'https://www.instagram.com/yourpage',
        linkedin: 'https://www.linkedin.com/yourpage',
        youtube: 'https://www.youtube.com/yourpage',
      },
      // Add other fields and their respective values here
    };

    // Create a new Static document using the data object
    await Static.create(staticData);

    console.log('Data imported!'.green.inverse);
    process.exit();
  } catch (error) {
    console.error(`${error}`.red.inverse);
    process.exit(1);
  }
};

/* const importData = async () => {
  try {
    await User.deleteMany();
    const users = [];
    let counter = 1;

    for (let i = 0; i < 100000; i++) {
      const user = {
        name: faker.person.fullName(),
        email: `user${counter}@example.com`,
        password: faker.internet.password(),
        emailVerified: true,
      };
      users.push(user);
      counter++;
    }

    await User.insertMany(users);
    console.log('Data imported!'.green.inverse);
    process.exit();
  } catch (error) {
    console.error(`${error}`.red.inverse);
    process.exit(1);
  }
}; */

importData();
