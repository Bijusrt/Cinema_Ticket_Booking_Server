const express = require('express');

const app = express();

const morgan = require('morgan');

const bodyParser = require('body-parser');

const jwt = require('jsonwebtoken');

const router = express.Router();



app.use(express.json());

app.use(bodyParser.urlencoded({extended:true}));

app.use(morgan('dev'));

require('dotenv').config();





//User Activity

app.use('/users',require('./route/users'));

//Show Details

app.use('/shows',require('./route/shows'));

//Ticket Booking

app.use('/book_tickets',require('./route/booking'));

//Ticket Cancellation

app.use('/cancel_tickets',require('./route/cancellation'));

//Suggestion On Next Available Show

app.use('/suggestion',require('./route/suggestion'));


//Error Handling

// app.use((req,res,next)=>{

//     var error = new Error("Could Not Find What You Expected! ")

//     console.log(error);
    
//     error.status = 404;
    
//     next(error);

// });

// app.use((error,req,res,next)=>{

//     console.log(error);
    
//     error.status = (error.status || 500 );
   
//     res.json({
   
//         message:error.message
   
//     });

// });




const port = 8000;

app.listen(port,()=>{

    console.log('Successfully connected to port ',port);
    
});