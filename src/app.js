const express = require('express');
const app = express();
const path = require("path");


app.use(express.static('public'));
app.set('views', path.join(__dirname, './src/views'))
app.set('view engine', 'ejs');


let indexRouter = require('./routes/index');
let productsRouter = require('./routes/products');
let usersRouter = require('./routes/users');

app.use('/', indexRouter);
app.use('/products', productsRouter);
app.use('/user', usersRouter);

app.listen(process.env.PORT || 3000, () => {
    console.log("Server start");
})