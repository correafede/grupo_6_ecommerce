const express = require('express');
const app = express();
app.use(express.static('public'));


let indexRouter = require('./routes/index');
app.set('view engine', 'ejs');

app.use('/', indexRouter);
app.use('/productDetail', indexRouter);
// app.use('/productDetail', indexRouter);
// app.use('/productDetail', indexRouter);
// app.use('/productDetail', indexRouter);
// app.use('/productDetail', indexRouter);


app.listen(process.env.PORT || 3000, () => {
    console.log("Server start");
})

// app.get('/', (req,res) =>{
//     res.sendFile(__dirname + '/views/index.html');
// })

// app.get('/login', (req,res) =>{
//     res.sendFile(__dirname + '/views/login.html');
// })

// app.get('/register', (req,res) =>{
//     res.sendFile(__dirname + '/views/register.html');
// })

// app.get('/productCart', (req,res) =>{
//     res.sendFile(__dirname + '/views/productCart.html');
// })

// app.get('/productDetail', (req,res) =>{
//     res.sendFile(__dirname + '/views/productDetail.html');
// })

// app.get('*', (req,res) =>{
//     res.sendFile(__dirname + '/views/404.html');
// })
