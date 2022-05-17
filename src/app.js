const express = require('express');
const app = express();
const path = require("path");
const methodOverride =  require('method-override');

app.use(express.static('public'));
app.use(methodOverride('_method')); 
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'ejs');


let indexRouter = require('./routes/main');
let productsRouter = require('./routes/products');
let usersRouter = require('./routes/users');

app.use('/', indexRouter);
app.use('/products', productsRouter);
app.use('/user', usersRouter);

app.listen(process.env.PORT || 3000, () => {
    console.log("Server start");
})