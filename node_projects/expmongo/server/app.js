// many to many relationship in MongoDB using Mongoose and Express.js
// We will create a simple application to model students and courses.
// Each student can enroll in multiple courses, and each course can have multiple students.
// src: https://www.youtube.com/watch?v=1-6Gb0PEQJU&ab_channel=TechnicalRajni

const express = require("express");
const mongoose = require("mongoose");

const app = express();
const PORT = process.env.PORT || 3000;

// connect to MongoDB
mongoose.connect('mongodb://localhost:27017/university');

// Define Student Schema

const studentSchema = new mongoose.Schema({
    name: String,
    courses: [
        {
            type: mongoose.Schema.Types.ObjectId,
            ref: "Course"
        }
    ]
});

const Student = mongoose.model("Student", studentSchema);

// Define Course schema
const courseSchema = new mongoose.Schema({
    title: String,
    students: [
        {
            type: mongoose.Schema.Types.ObjectId,
            ref: "Student"
        }
    ]
});

const Course = mongoose.model("Course", courseSchema);


app.get('/', (req, res) => {
    res.send('Many to many relation: student+course system is running.....');
});

app.get("/api/students", async (req, res) => {
    try {
        const students = await Student.find().populate("courses", "title");
        res.json(students);
    } catch (error) {
        res.status(500).json({
            message: "Error fetching students",
            error: error.message
        })
    }
});

app.get('/api/courses', async (req, res) => {
    try {
        const courses = await Course.find().populate('students');
        res.json(courses);
    } catch (error) {
        res.status(500).json({
            message: "Error fetching courses",
            error: error.message
        })
    }
});

// Insert sample data
app.post("/api/insert-sample-data", async (req, res) => {
    try {
        // Insert student
        const student1 = await Student.create({
            name: "Mr Max"
        });
        const student2 = await Student.create({
            name: "Badrul"
        });
        const student3 = await Student.create({
            name: "David"
        });

        // Insert courses
        const course1 = await Course.create({
            title: "Math"
        });
        const course2 = await Course.create({
            title: "Science"
        });
        const course3 = await Course.create({
            title: "English"
        });

        // Update students courses
        student1.courses.push(course1._id, course2._id);
        student2.courses.push(course2._id);
        await  student1.save();
        await student2.save();

        // Update cources students
        course1.students.push(student1._id);
        course2.students.push(student1._id, student2._id);
        await course1.save();
        await course2.save();

        res.json({
            message: "Sample data Inserted"
        })

    } catch (error) {
        res.status(500).json({
            message: "Error fetching sample Data",
            error: error.message
        })
    }
});

app.listen(PORT, () => {
    console.log(`Surver is running on port ${PORT}`);
})