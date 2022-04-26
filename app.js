const express = require('express');
const app = express();
app.use(express.static('public'));

app.listen(3030, () => {
    console.log("Server start");
})

app.get('/', (req,res) =>{
    res.sendFile(__dirname + '/views/index.html');
})

app.get('/login.html', (req,res) =>{
    res.sendFile(__dirname + '/views/login.html');
})

app.get('/register.html', (req,res) =>{
    res.sendFile(__dirname + '/views/register.html');
})

app.get('/productCart', (req,res) =>{
    res.sendFile(__dirname + '/views/productCart.html');
})

app.get('/productDetail', (req,res) =>{
    res.sendFile(__dirname + '/views/productDetail.html');
})

app.get('*', (req,res) =>{
    res.sendFile(__dirname + '/views/404.html');
})
