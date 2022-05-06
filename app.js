const express = require('express');
const app = express();
app.use(express.static('public'));


let indexRouter = require('./routes/index');
app.set('view engine', 'ejs');

app.use('/', indexRouter);

app.listen(process.env.PORT || 3000, () => {
    console.log("Server start");
})