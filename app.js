const express = require('express');
const app = express();
const path = require('path')
//  const imagenes = [
//     {
//        src: '/img/andes-origen-ipa-andina',
//        alt: 'andes-origen-ipa-andina',
//        nombre: andes-origen-ipa-andina
//      },
//     {
//       src: 'https://www.hola.com/imagenes/estar-bien/20180925130054/consejos-para-cuidar-a-un-gatito-recien-nacido-cs/0-601-526/cuidardgatito-t.jpg',
//       alt: 'Gatitos, no se puede decir más',
//       nombre: 'Artículo 2',
//       precio: 82
//     },
//     {
//       src: 'https://www.zooplus.es/magazine/wp-content/uploads/2018/04/fotolia_169457098.jpg',
//       alt: 'Gatitos, no se puede decir más',
//       nombre: 'Artículo 3',
//       precio: 99
//     },
//   ];
  
//   function renderizarGaleria(imagenes) {
//     let html = '';
    
//     imagenes.forEach(function(imagen){
//       html += `
//         <div class="galeria-item">
//           <img src="${imagen.src}" alt="${imagen.alt}" width="200px" />
//           <h3>${imagen.nombre}</h3>
//           <p>${imagen.precio}€</p>
//         </div>
//       `;
//     });

app.use(express.static('public'));

app.listen(3030, () => {
    console.log("Server start");
})

app.get('/', (req,res) =>{
    res.sendFile(path.join(__dirname, '/views/index.html'))
})

app.get('/login', (req,res) =>{
    res.sendFile(path.join(__dirname, '/views/login.html'))
})

app.get('/register', (req,res) =>{
    res.sendFile(path.join(__dirname, '/views/register.html'))
})

app.get('/productCart', (req,res) =>{
    res.sendFile(path.join(__dirname, '/views/productCart.html'))
})

app.get('/productDetail', (req,res) =>{
    res.sendFile(path.join(__dirname, '/views/productDetail.html'))
})

app.get('*', (req,res) =>{
    res.sendFile(path.join(__dirname, '/views/404.html'))
})