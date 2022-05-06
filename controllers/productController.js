let productController = {
    detalle: (req, res) => {
        let birra = listaBirras.find(birra => birra.id == req.params.id);
        res.render("detail", {birra: birra});
    },
    carrito: (req, res) => { 
        res.render("cart");
    }
}




const listaBirras = [
    {
        id: 1,
        nombre: 'Cerveza Andes Origen IPA Andina',
        tamanio: 'Lata 473ml',
        categoria: 'IPA',
        abv: '4.5% ALC',
        ibu: '35',
        descripcion: 'La Andes IPA Andina es una cerveza estilo IPA, valga la redundancia, de la escuela Inglesa. Como seguramente usted sabe, este estilo de cerveza se caracteriza por el amargor que le otorga su alto contenido de lúpulo. Lo que seguramente no sabe es que la IPA Andina contiene uva mendocina. Este ingrediente es clave para que en el paladar perciba una especie de dulzor, que a su vez hace el amargor más amigable. Esta edición limitada es ideal para acompañar platos picantones, como unas papas bravas o algún dip a base de curry.',
        precio: '212',
        precio6: '1.272',
        cantidad: '',
        img: 'andes-origen-ipa-andina.webp'
    },
    {
        id: 2,
        nombre: 'Cerveza BierHaus Chalaland',
        tamanio: 'Lata 473ml',
        categoria: 'AMERICAN IPA / IPA',
        abv: '5.3% ALC',
        ibu: '42',
        descripcion: 'La cerveza Chalaland de Bierhaus es una IPA lista para disfrutar de alto vuelo resinoso y terpenoso. Es una american IPA elaborada con terpenos de marihuana, que aportan el aroma característico del cannabis, con notas dulces, pimentadas y citricas.  De amargos medio, cuenta con 42 IBU y su sabor nos recuerda a una tradicional American IPA pero con un toque especial!',
        precio: '450',
        precio6: '2.700',
        cantidad: '',
        img: 'bier-haus-chalaland-ipa.webp'
    },
    {
        id: 3,
        nombre: 'Cerveza BierHaus IPA Superstar',
        tamanio: 'Lata 473ml',
        categoria: 'IPA / DORADO',
        abv: '5.7% ALC',
        ibu: '45',
        descripcion: 'La Cerveza BierHaus Superstar IPA, es una versión americana de la tradicional IPA inglesa. Es una cerveza de intenso amargor y aroma a lúpulos cítricos y frutales. De alcohol moderado, final seco y largo retrogusto.',
        precio: '330',
        precio6: '1.980',
        cantidad: '',
        img: 'bier-haus-superstar-ipa.webp'
    },
    {
        id: 4,
        nombre: 'Cerveza Blest IPA',
        tamanio: 'Lata 473ml',
        categoria: 'IPA',
        abv: '6.5% ALC',
        ibu: '54',
        descripcion: 'La cerveza Blest IPA posee un marcado golpe de lúpulo, de color ámbar-rojizo, aportado por las maltas caramelizadas. Una característica es el aroma cítrico. Se usan lúpulos nacionales e importados. En el sabor se mezclan notas terrosas, florales y leve a hierbas. Ideal para disfrutar con comidas de sabores fuertes, carnes ahumadas, picadas de sabores intensos. ',
        precio: '335',
        precio6: '2.010',
        cantidad: '',
        img: 'blest-ipa.webp'
    },
    {
        id: 5,
        nombre: 'Cerveza Dos Dingos Aussie',
        tamanio: 'Lata 473ml',
        categoria: 'IPA / DORADO',
        abv: '6.5% ALC',
        ibu: '45',
        descripcion: 'Una Cerveza IPA estilo Australiana, muy fácil de tomar. De amargor medio y final seco, se caracteriza por su fuerte perfil tropical tanto en boca como en nariz. El doble dry hop de lúpulos australianos galaxy y enigma le aportan intensas notas tropicales a mango, melón y papaya. Perfecta para los amantes del lúpulo y de las cervezas aromáticas tropicales.',
        precio: '390',
        precio6: '2.340',
        cantidad: '',
        img: 'dos-dingos-aussie-ipa.webp'
    },
    {
        id: 6,
        nombre: 'Dos Dingos SUper Refreshing IPA',
        tamanio: '',
        categoria: 'IPA / DORADO',
        abv: '7% ALC',
        ibu: '',
        descripcion: 'No te quede sin esta Edición Limitada de Dos Dingos, Super Refreshing IPA es un hibrido entre una IPA de la costa este y la oeste. Con un cuerpo medio y algo turbia, es extremadamente refrescante y sabrosa. Es de color amarillo pálido y amargor balanceado. Tiene sabores y aromas cítricos dulces tropicales, proveniente de una tripe dry hop de los lúpulos Vic-Secrete y Citra (Aus)',
        precio: '330',
        precio6: '1.980',
        cantidad: '',
        img: 'dos-dingos-super-refreshing-ipa.webp'
    }
]

/*  **Template producto**

{
    id:#,
    nombre: '',
    tamaño: '',
    categoria: '',
    abv: '',
    ibu: '',
    descripcion: '',
    precio: '',
    precio6: '',
    cantidad: '',
    img: ''
}

*/

module.exports = productController;