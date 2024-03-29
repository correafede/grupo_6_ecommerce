const express = require('express');
const app = express();
const path = require("path");
const methodOverride =  require('method-override');
const session = require('express-session');
const cookies = require('cookie-parser');

const userLoggedMiddleware = require('./middlewares/userLoggedMiddleware');

app.use(express.static('public'));
app.use(methodOverride('_method')); 
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'ejs');


app.use(session({
    secret: "Secreto!",
    resave: false,
    saveUninitialized: false,
}));

let indexRouter = require('./routes/main');
let productsRouter = require('./routes/products');
let usersRouter = require('./routes/users');
const usersAPIController = require('./routes/api/users')
const productsAPIController = require('./routes/api/products')

app.use(cookies());
app.use(userLoggedMiddleware);


app.use('/', indexRouter);
app.use('/products', productsRouter);
app.use('/user', usersRouter);
app.use('/api/users',usersAPIController);
app.use('/api/products',productsAPIController);
app.use((req, res, next) =>{
    res.status(404).render("404")
})

app.listen(process.env.PORT || 3000, () => {
    console.log("Server start");
})



