const Todo = require("../models/todoModel");


const showDateTime = (req, res) => {
    console.warn("Show Date");
    res.send("<h1>Hello!</h1><h2>This is home!</h2>");
}

const showDateTimeDB = async (req, res) => {
    const showTodoList = await Todo.find();
    //res.json(showTodoList);
    //process.exit(1);

    //let myDate = new Date('2023-11-15');

    /*     const spDate = await Todo.find({
            // date: new Date('2023-11-15T08:14:03.997Z')
    
    
            date: myDate
            /* date: {
                $gte: new Date(2023, 11), 
                $lt: new Date(2023, 11)
            } 
        }) */

    const showDate = new Date();
    //res.send(showDate);
    /*  res.send({
         message: "This is home!. Starting page",
         Date: showDate,
         Todos: showTodoList,
     }); */

    //const start = req.params.id; //2021-07-12
    /* const start = 2023-11-15;
    const data = await Todo.find({
        "date": {
            '$gte': `${start}T00:00:00.000Z`,
            '$lt': `${start}T23:59:59.999Z`
        }
    }); */
    //console.log(data);

    //const users = await User.find({ bornAt: { $gte: new Date('1994-01-01T00:00:00Z'), $lte: new Date('1995-01-01T00:00:00Z') } });
    //const data = await Todo.find({ date: { $gte: new Date('2023-11-15T00:00:00.000Z'), $lte: new Date('2023-12-04T07:42:46.000Z') } });
    const data = await Todo.find({ date: { $gte: new Date('2023-11-30'), $lte: new Date('2023-12-31') } });   // Working nice

    //By using the $expr and $month operators - nicely worked all worked below
    // Find all where month november
    const data2 = await Todo.find({
        $expr: { $eq: [{ $month: "$date" }, 11] }
    })

    // Find all where year 2023
    const data3 = await Todo.find({
        $expr: { $eq: [{ $year: "$date" }, 2023] }
    })

    // Find all where date 17
    const data4 = await Todo.find({
        $expr: { $eq: [{ $dayOfMonth: "$date" }, 17] }
    })

    // Find exact date time
    const spDate = await Todo.find({
        date: new Date('2023-11-15T08:14:03.997Z')
    })

    //How to query all data where `created` today
    var now = new Date();
    var startOfToday = new Date(now.getFullYear(), now.getMonth(), now.getDate());
    const data5 = await Todo.find({date: {$gte: startOfToday}}); 


    res.json({
        message: "This is home!. Starting page",
        //Date: data,
        //Todos: showTodoList,
        //Todos: data2
        Todos: data5
    });
}

//export { showDateTime }

module.exports = { showDateTime, showDateTimeDB };