let productController = {
    detalle: (req, res) => {
        let birra = listaBirras.find(birra => birra.id == req.params.id);
        res.render("productDetail", {birra: birra});
    },
    carrito: (req, res) => { 
        res.render("productCart");
    },
    create: (req, res) => { 
        res.render("productCreate");
    },
    modify: (req, res) => { 
        res.render("productModify");
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
        cantidad: '100',
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
        cantidad: '100',
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
        cantidad: '100',
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
        cantidad: '100',
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
        cantidad: '100',
        img: 'dos-dingos-aussie-ipa.webp'
    },
    {
        id: 6,
        nombre: 'Dos Dingos Super Refreshing IPA',
        tamanio: 'Botella 355ml',
        categoria: 'IPA / DORADO',
        abv: '7% ALC',
        ibu: '45',
        descripcion: 'No te quede sin esta Edición Limitada de Dos Dingos, Super Refreshing IPA es un hibrido entre una IPA de la costa este y la oeste. Con un cuerpo medio y algo turbia, es extremadamente refrescante y sabrosa. Es de color amarillo pálido y amargor balanceado. Tiene sabores y aromas cítricos dulces tropicales, proveniente de una tripe dry hop de los lúpulos Vic-Secrete y Citra (Aus)',
        precio: '330',
        precio6: '1.980',
        cantidad: '100',
        img: 'dos-dingos-super-refreshing-ipa.webp'
    },
    {
        id: 7,
        nombre: 'Cerveza Jarva IPA 5 Johnnies',
        tamaño: 'Lata 473ml',
        categoria: 'IPA',
        abv: '4.6% ALC',
        ibu: '32',
        descripcion: 'La cerveza JARVA 5 Johnnies es una IPA híbrida de color dorado intenso, y suave balance entre malta y lúpulos americanos. Dicho equilibrio le da una excepcional tomabilidad y sabor, y sus 5 tipos de lúpulos le otorgan un potente aroma cítrico, resinoso y a frutas tropicales. Jarva Brewing Company es la exploración de una familia emprendedora. Desde 2011 elaboran cervezas que se destacan por su calidad, creatividad e innovación.',
        precio: '360',
        precio6: '2.160',
        cantidad: '100',
        img: 'jarva-5-johnnies-ipa.webp'
    },
    {
        id: 8,
        nombre: 'Cerveza Me Echó La Burra IPA',
        tamaño: 'Botella 355ml',
        categoria: 'IPA / DORADO',
        abv: '6% ALC',
        ibu: '58',
        descripcion: 'Me Echó La Burra es una cerveza especial y artesanal elaborada según la tradición belga a base de cebada malteada, lúpulo y levaduras de calidad. Una Indian Pale Ale elaborada con 4 maltas y 4 lúpulos distintos. De sabor sabor dulce y frutal que después se convierte en un amargor caramelizado. ',
        precio: '290',
        precio6: '1.740',
        cantidad: '100',
        img: 'me-echo-la-burra-ipa.webp'
    },
    {
        id: 9,
        nombre: 'Cerveza Mesta Beepure Session IPA',
        tamaño: 'Botella 500ml',
        categoria: 'IPA / DORADO',
        abv: '4.2% ALC',
        ibu: '50',
        descripcion: 'Cerveza rubia con aroma, sabor y amargor intenso. IPA de sesión americana, con notas frutales, cítricas y resinosas. Final refrescante y ligero.',
        precio: '320',
        precio6: '1.920',
        cantidad: '100',
        img: 'mesta-beepure-session-ipa.webp'
    },
    {
        id: 10,
        nombre: 'Cerveza Ocaso IPA',
        tamaño: 'Lata 473ml',
        categoria: 'IPA / DORADO',
        abv: '5.2% ALC',
        ibu: '30',
        descripcion: 'La Cerveza Ocaso IPA es brillante y refrescante, con aroma a lúpulo floral y cítrico bien marcado. El uso de lúpulo Cascade en la técnica de dry-hop dinámico a bajas temperatura desprenden estos aromas particulares. De buen balance, moderado amargor, y color cobre. Gran compañera de maridajes con comidas picantes.',
        precio: '300',
        precio6: '1.800',
        cantidad: '100',
        img: 'ocaso-ipa.webp'
    },
    {
        id: 11,
        nombre: 'Cerveza Ocaso IPA Sin Alcohol',
        tamaño: 'Lata 473ml',
        categoria: 'IPA / DORADO',
        abv: '0% ALC',
        ibu: '30',
        descripcion: 'Ocaso nos ofrece una nueva variedad, en esta ocasión traemos una IPA como clásica, pero esta vez, Sin Alcohol! Para que disfrutes en todo momento, como almuerzos, salidas, haciendo deporte, para quien maneje y embarazadas.',
        precio: '275',
        precio6: '1.650',
        cantidad: '50',
        img: 'ocaso-ipa-sin-alcohol.webp'
    },
    {
        id: 12,
        nombre: 'Cerveza Patagonia 24.7 Session IPA con Sauco',
        tamaño: 'LATA 410ML',
        categoria: 'IPA / GOLD',
        abv: '4.5% ALC',
        ibu: '34',
        descripcion: 'Cerveza estilo Session IPA, muy tomable y refrescante, de amargor marcado otorgado por una combinación de lúpulos patagónicos. Cuenta con un intenso aroma a cítrico y frutal gracias a la técnica de agregado de lúpulo en frío  llamada Dry Hopping. El agregado de sauco y miel  en frio balancean el amargor del lúpulo, aportando cierta acidez y final seco. Combinación perfecta con platos con frutas, ensaladas agridulces y comida thai. Comidas con no mucha intensidad de sabor o grasa, pero sí aromáticas y especiadas. Risottos perfumados, cheesecake.',
        precio: '262',
        precio6: '1.572',
        cantidad: '100',
        img: 'cerveza-patagonia-247- session-ipa.webp'
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