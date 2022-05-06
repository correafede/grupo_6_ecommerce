const express = require('express');
const app = express();
app.use(express.static('public'));


let indexRouter = require('./routes/index');
let productsRouter = require('./routes/products');
let usersRouter = require('./routes/users');
app.set('view engine', 'ejs');

app.use('/', indexRouter);
app.use('/products', productsRouter);
app.use('/user', usersRouter);

app.listen(process.env.PORT || 3000, () => {
    console.log("Server start");
})