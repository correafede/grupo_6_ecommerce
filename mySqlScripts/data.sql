insert into color (idColor, Nombre) values (1, 'Dorada');
insert into color (idColor, Nombre) values (2, 'Roja');
insert into color (idColor, Nombre) values (3, 'Oscura');
insert into color (idColor, Nombre) values (4, 'Negra');

insert into category (idCategory, Nombre) values (1, 'IPA');
insert into category (idCategory, Nombre) values (2, 'APA');
insert into category (idCategory, Nombre) values (3, 'AMBER');
insert into category (idCategory, Nombre) values (4, 'HONEY');
insert into category (idCategory, Nombre) values (5, 'TRIGO');
insert into category (idCategory, Nombre) values (6, 'STOUT');
insert into category (idCategory, Nombre) values (7, 'PORTER');
insert into category (idCategory, Nombre) values (8, 'SOUR');
insert into category (idCategory, Nombre) values (9, 'FRUTADAS');
insert into category (idCategory, Nombre) values (10, 'SIN ALCOHOL');

insert into size (idSize, Nombre) values (1, 'Lata 330ml');
insert into size (idSize, Nombre) values (2, 'Botella 355ml');
insert into size (idSize, Nombre) values (3, 'Lata 473ml');
insert into size (idSize, Nombre) values (4, 'Botella 500ml');

insert into usercategory (idUserCategory, Nombre) values (1, 'ADMIN');
insert into usercategory (idUserCategory, Nombre) values (2, 'USER');

insert into usuarios (idUsuarios, first_name, last_name, email, password, id_UserCategory) values (1, 'Federico', 'Correa', 'correafedde@gmail.com', '$2a$10$J6hogqIYsL7voMehYsspqOknt3dbQpdxsNb6ZdHugpnnLvgdwo7De', 1);
insert into usuarios (idUsuarios, first_name, last_name, email, password, id_UserCategory) values (2, 'Marcos', 'Chapire', 'marcoschapire@gmail.com', '$2a$10$CC71jhqnIMkky4JZ7J.rfudN6oo.DsVuY0VFzfqrIKUpeu8MUPuKS', 1);
insert into usuarios (idUsuarios, first_name, last_name, email, password, id_UserCategory) values (3, 'Mauricio', 'Martin', 'mauriciomanuelmartin@gmail.com', '$2a$10$CC71jhqnIMkky4JZ7J.rfudN6oo.DsVuY0VFzfqrIKUpeu8MUPuKS', 1);
insert into usuarios (idUsuarios, first_name, last_name, email, password, id_UserCategory) values (4, 'Usuario', 'N', 'test@correo.com', '$2a$10$l17X2F2v5l8hmxd3O8sHS.xTgdVA2hinlIGRKeFDHTT.Hy16KEOZK', 2);

INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES 
 (1, "Cerveza Andes Origen IPA Andina",3 ,1 ,1,4.5,35,"La Andes IPA Andina es una cerveza estilo IPA, valga la redundancia, de la escuela Inglesa. Como seguramente usted sabe, este estilo de cerveza se caracteriza por el amargor que le otorga su alto contenido de lúpulo. Lo que seguramente no sabe es que la IPA Andina contiene uva mendocdocina. Este ingrediente es clave para que en el paladar perciba una especie de dulzor, que a su vez hace el amargor más amigable. Esta edición limitada es ideal para acompañar platos picantones, como unas papas bravas o algún dip a base de curry.", 200, 15,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES 
 (2, "Cerveza BierHaus Chalaland",3 ,1 ,1,5.3,42,"La cerveza Chalaland de Bierhaus es una IPA lista para disfrutar de alto vuelo resinoso y terpenoso. Es una american IPA elaborada con terpenos de marihuana, que aportan el aroma característico del cannabis, con notas dulces, pimentadas y citricas.  De amargos medio, cuenta con 42 IBU y su sabor nos recuerda a una tradic
ional American IPA pero con un toque especial!",
450, 10,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES 
 (3, "Cerveza BierHaus IPA Supersta",3 ,1 ,1,5.7,45,"La Cerveza BierHaus Superstar IPA, es una versión americana de la tradicional IPA inglesa. Es una cerveza de intenso amargor y aroma a lúpulos cítricos y frutales. De alcohol moderado, final seco y largo retrogusto.",
330, 15,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES 
 (4,"Cerveza Blest IPA",3 ,1 ,1,6.5,54,"La cerveza Blest IPA posee un marcado golpe de lúpulo, de color ámbar-rojizo, aportado por las maltas caramelizadas. Una característica es el aroma cítrico. Se usan lúpulos nacionales e importados. En el sabor se mezclan notas terrosas, florales y leve a hierbas. Ideal para disfrutar con comidas de sabores fuertes, carnes ahumadas
, picadas de sabores intensos.", 335, 15,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (5,"Cerveza Dos Dingos Aussie",3 ,1 ,1,6.5,45,"Una Cerveza IPA estilo Australiana, muy fácil de tomar. De amargor medio y final seco, se caracteriza por su fuerte perfil tropical tanto en boca como en nariz. El doble dry hop de lúpulos australianos galaxy y enigma le aportan intensas notas tropicales a mango, melón y papaya. Perfecta para los amantes del lúpulo y de las cervezas aromáticas tropicales.",
390, 10,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (6,"Dos Dingos Super Refreshing IPA",3 ,1 ,1,7,45,"No te quede sin esta Edición Limitada de Dos Dingos, Super Refreshing IPA es un hibrido entre una IPA de la costa este y la oeste. Con un cuerpo medio y algo turbia, es extremadamente refrescante y sabrosa. Es de color amarillo pálido y amargor balanceado. Tiene sabores y aromas cítricos dulces tropicales, proveniente de una tripe dry hop de los lúpulos Vic-Secrete y Citra (Aus)",
330, 20,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (7,"Cerveza Jarva IPA 5 Johnnies",3 ,1 ,1 ,4.6,32,"La cerveza JARVA 5 Johnnies es una IPA híbrida de color dorado intenso, y suave balance entre malta y lúpulos americanos. Dicho equilibrio le da una excepcional tomabilidad y sabor, y sus 5 tipos de lúpulos le otorgan un potente aroma cítrico, resinoso y a frutas tropicales. Jarva Brewing Company es la exploración de una familia emprendedora. Desde 2011 elaboran cervezas que se destacan por su calidad, creatividad e innovación.",
360, 15,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (8,"Cerveza Me Echó La Burra IPA",3 ,1 ,1 ,6,58,"Me Echó La Burra es una cerveza especial y artesanal elaborada según la tradición belga a base de cebada malteada, lúpulo y levaduras de calidad. Una Indian Pale Ale elaborada con 4 maltas y 4 lúpulos distintos. De sabor sabor dulce y frutal que después se convierte en un amargor caramelizado.",
290, 10,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (9,"Cerveza Mesta Beepure Session IPA",4 ,1 ,1 ,4.2,50,"Cerveza rubia con aroma, sabor y amargor intenso. IPA de sesión americana, con notas frutales, cítricas y resinosas. Final refrescante y ligero.",
320, 10,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (10,"Cerveza Ocaso IPA",3 ,1 ,1,5.2,30,"La Cerveza Ocaso IPA es brillante y refrescante, con aroma a lúpulo floral y cítrico bien marcado. El uso de lúpulo Cascade en la técnica de dry-hop dinámico a bajas temperatura desprenden estos aromas particulares. De buen balance, moderado amargor, y color cobre. Gran compañera de maridajes con comidas picantes.",
300, 15,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (11,"Cerveza Ocaso IPA Sin Alcohol",3 ,10 ,1 ,0 , 30,"Ocaso nos ofrece una nueva variedad, en esta ocasión traemos una IPA como clásica, pero esta vez, Sin Alcohol! Para que disfrutes en todo momento, como almuerzos, salidas, haciendo deporte, para quien maneje y embarazadas.",
275, 15,50);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (12,"Cerveza Patagonia 24.7 Session IPA con Sauco",3 ,1 ,1 ,4.5 , 34,"Cerveza estilo Session IPA, muy tomable y refrescante, de amargor marcado otorgado por una combinación de lúpulos patagónicos. Cuenta con un intenso aroma a cítrico y frutal gracias a la técnica de agregado de lúpulo en frío  llamada Dry Hopping. El agregado de sauco y miel  en frio balancean el amargor del lúpulo, aportando cierta acidez y final seco. Combinación perfecta con platos con frutas, ensaladas agridulces y comida thai. Comidas con no mucha intensidad de sabor o grasa, pero sí aromáticas y especiadas. Risottos perfumados, cheesecake.",
262, 15,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (13,"Cerveza Patagonia Küné",3 ,2 ,1 ,5 , 22,"La Patagonia Pale Ale presenta una combinación de maltas especiales, que da lugar a una cerveza de color dorado bronce brillante de leve amargor y cuerpo medio. Cerveza muy balanceada y fácil de tomar.\r\n\r\nPor sus maltas caramelo, usadas en la elaboración, hace realzar sabores caramelizados en platos de pescados y carnes grilladas, así también como postres con caramelo como flanes y budín de pan con caramelo. Las notas cítricas del lúpulo Americano Mapuche, se complementan a la perfección con salsas de naranja y limón en platos salados y dulces. Pescados grasos y pollo con todo tipo de hierbas, hacen resaltar aromas herbales del lúpulo, también.",
290, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (14,"Cerveza Ocaso Tropical APA",3 ,2 ,1 ,4.6 , 22,"Una American Pale Ale con un giro Tropical. Una cerveza muy balanceada con un moderado amargo, producto del uso de Nugget en su cocción. En su aroma se destaca la presencia de Anana y lúpulo Citra. El dulzor del Mango equilibra esta cerveza de color dorado profundo.",
275, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (15,"Cerveza Patagonia Abrazo de Oso",3 ,3 ,2 ,5 , 10,"Cerveza de trigo especial con toque de miel. Apariencia dorada opalescente. Esta cerveza se diferencia de las típicas cervezas de trigo por usar en la receta una mezcla que balancea delicadamente la miel de abeja Patagónica. Es levemente dulce y refrescante. Con Aromas a Banana, miel y cereal\r\n\r\nMaridaje Ideal: Ensaladas Frescas, Quesos Suaves, Postres Frutales y Postres con Banana\r\n\r\nSabor: De sabores frutales, con un toque dulce por la miel patagónica.\r\nRefrescante, de cuerpo medio-liviano",
290, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (16,"Cerveza Peñón del Águila Arándano Sour",3 ,2 ,1 ,4 , 0,"Buscando siempre experiencias superadora, Peñón del Águila nos trae su última creación: las cervezas ácidas. De bajo alcohol y amargor, se trata de una propuesta refrescante y de alta tomabilidad. Sus latas nos trasladan a lugares exóticos y cálidos, que resaltan la frescura y acidez de estas cervezas. \r\n\r\nInspiradas en las Catharinas sour the Brasil, los maestros cerveceros de Peñón del Águila nos traen la Arándano Sour. La acidez, limpia, delicada y refrescante de este tipo de cerveza es aportado por el accionar de Lactobacilus. Es en la etapa de la fermentación cuando se agregan los arándanos, aportando el balance, el sabor frutal y el color violeta cristalino característico de la esta cerveza. Sin dudas una opción exótica, ideal para quienes les encanta probar sabores y experiencias nuevas. ",
300, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (17,"Cerveza Jamonera",2 ,2 ,1 ,5.5 , 0,"Cerveza de alta fermentación estilo Amber Ale elaborada con maltas tostadas y caramelizadas. Tostada y de color rojizo es perfecta para acompañar un buen pedazo de jamón, embutidos ibéricos y carne a la brasa. ",
490, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (18,"Cerveza Andes Origen Roja",3 ,2 ,1 ,5.5 , 0,"Andes Origen rescata el placer del momento. Una cerveza pensada para aquellas personas que valoran su tiempo libre, para quienes disfrutan de los pequeños momentos de la vida. La opción ideal para quienes quieren mimarse.\r\n\r\nLa Andes Origen Roja a es una cerveza que posee un final seco y una leve acidez que la hacen muy versátil. Es una cerveza estilo Vienna Lager, su aroma a suave caramelo y leve lúpulo logran un balance perfecto. La Andes origen Roja, color ámbar cobrizo, es una cerveza de deleite. Ideal para acompañar pescados o carnes rojas, elaborados con verduras frescas o grilladas. Pastas, ya sean con o sin relleno, con salsas suaves de tomate o con un toque de crema. Crumble de manzana o de pera.",
212, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (19,"Cerveza Peñón del Águila Waldbier",3 ,2 ,1 ,5.3 , 0,"Te traemos la \"Cerveza del Bosque\". Una cerveza lager a la que se le agrega frambuesa, logrando ese aroma y sabor tan característico. De bajo amargor e intenso sabor, una cerveza fresca y veraniega para compartir con amigos. ",
300, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (20,"Cerveza Peñón del Águila Oktoberfest",3 ,2 ,1 ,4.8 , 0,"En Alemania, sólo cervezas que sean producidas dentro de la ciudad de Munich tienen el derecho a llamar a una cerveza \"Oktoberfest\". Como acá eso no sucede, Peñón nos ofrece la suya, una lager de color ámbar con amargor y alcohol moderados, lo que la convierte en una cerveza ideal para acompañar carnes.",
260, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (21,"Cerveza Birra del Borgo APA ReAle Extra 330ml",2 ,2 ,2 ,6.4 , 70,"Te presentamos la nueva cerveza Birra del Borgo ReAle Extra:
¡Una variación de la ReAle clásica que se juega con lúpulo!
Se añaden diferentes variedades todas en los últimos 10 minutos de ebullición, en una dosis 3 veces superior a la ReAle. El resultado es una explosión de aromas que van desde los cítricos hasta los resinosos (pino e incienso).
En el primer sorbo las papilas gustativas se ven inmersas en una potente sensación de amargor que da paso a una muy agradable y persistente nota de mandarina.",
590, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (22,"Cerveza Birra del Borgo APA ReAle Extra 330ml",2 ,2 ,2 ,6.4 , 70,"Te presentamos la nueva cerveza Birra del Borgo ReAle Extra:
¡Una variación de la ReAle clásica que se juega con lúpulo!
Se añaden diferentes variedades todas en los últimos 10 minutos de ebullición, en una dosis 3 veces superior a la ReAle. El resultado es una explosión de aromas que van desde los cítricos hasta los resinosos (pino e incienso).
En el primer sorbo las papilas gustativas se ven inmersas en una potente sensación de amargor que da paso a una muy agradable y persistente nota de mandarina.",
590, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (23,"Cerveza Patagonia Küné 730ml",5 ,2 ,2 ,6.4,70,"La Patagonia Pale Ale presenta una combinación de maltas especiales, que da lugar a una cerveza de color dorado bronce brillante de leve amargor y cuerpo medio. Cerveza muy balanceada y fácil de tomar.
Por sus maltas caramelo, usadas en la elaboración, hace realzar sabores caramelizados en platos de pescados y carnes grilladas, así también como postres con caramelo como flanes y budín de pan con caramelo. Las notas cítricas del lúpulo Americano Mapuche, se complementan a la perfección con salsas de naranja y limón en platos salados y dulces. Pescados grasos y pollo con todo tipo de hierbas, hacen resaltar aromas herbales del lúpulo, también.",
396, 15,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (24,"Cerveza Blest APA Lata 473ml",3 ,2 ,2 ,5.5 , 70, "La cerveza Blest APA es de cuerpo ligero y sabor intenso. Las American Pale Ale se caracterizan por su sabor a lúpulo americano y a malta. Debido al gran contenido de lúpulo, el amargos tiene una presencia constante que perdura en boca.
Sus aromas son ricos en notas a lúpulo con un ligero carácter cítrico. El suave aroma a maltas contribuye a equilibrar el del lúpulo y pueden dar origen a olores ligeramente dulces y hasta herbales.",
350, 10,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (25,"Cerveza Patagonia Escandinapa Lata 473ml",3 ,2 ,1 ,5.4 , 35, "La cerveza ESCANDINAPA es la nueva APA de Patagonia realizada con levadura traída especialmente de Noruega. Tiene un color amarillo dorado, y una espuma blanca y cremosa. Es parte de la edición Recetas Especiales, una selección de estilos exclusivos de los Refugios Patagonia que reflejan la esencia craft de la marca.",
450, 13,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (26,"Cerveza Leffe Ruby 330ml",2 ,3 ,2 ,5 , 10, "Haciendo de lo extraordinario algo simplemente perfecto, Leffe es una cerveza cuyo historial se remonta al año 1240. Una auténtica cerveza de abadía, esta ale debe su nombre a su color rojo rubí, traslúcido y reluciente, que obtiene del jugo de sauco y los frutos del bosque que se le añaden. De ellos, la frutilla y la frambuesa le dan su sabor refinado, mientras que los arándanos le aportan una acidez refrescante. Para agregarle complejidad, la levadura que usan todas las Leffe le aporta notas frutales y de vainilla. Un true manjar cervecero.",
565, 5,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (27,"Cerveza Me Echó La Burra Roja 8 350ml",2 ,3 ,2 ,5 , 10, "Me Echó La Burra es una cerveza especial y artesanal elaborada según la tradición belga a base de cebada malteada, lúpulo y levaduras de calidad. Es una cerveza de doble fermentación en botella y doble maduración en bodega. Esta es una cerveza aromática, con notas marcadas de caramelo y clavo.",
270, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (28,"Cerveza Me Echó La Burra La Pecadora 350ml",2 ,3 ,1 ,6 , 50, "Me Echó La Burra es una cerveza especial y artesanal elaborada según la tradición belga a base de cebada malteada, lúpulo y levaduras de calidad. Es una cerveza de doble fermentación en botella y doble maduración en bodega. Con un contenido alcohólico de 6% y un blend frutal, es de las cervezas de mayor drinkability de la cervecería salteña.",
290, 0,100); 
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (29,"Straus Red Ale 355ml",3 ,3 ,1 ,4.5 , 70, "Straus Red Ale es una cerveza de color ámbar, aroma a tostado y notas a caramelo, con un grado de amargor pronunciado. Contenido alcohólico medio de 4.5%. Es una Cerveza Libre de Gluten.",
300, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (30,"Cerveza Peñón del Águila American Amber Lager Lata 473ml",3 ,3 ,1 ,5.6 , 32, "Esta variedad de Peñón del Águila es una lager de intenso color ámbar, con destellos de rubí y una espuma compacta y clara. Presente un aroma complejo donde la fruta tropical, durazno y cítricos de los lúpulos americanos se combinan con notas a caramelo de las maltas especiales.
Ideal para acompañar fiambres, carnes asadas, quesos y postres en base a fruta.",
370, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (31,"Cerveza Peñón del Águila Barley Wine Lata 354ml",3 ,3 ,1 ,10, 63, "La Barley Wine tiene la característica de ser una cerveza extremadamente maltosa. Como su nombre lo indica, es un vino de cebada, con un alto contenido alcohólico. Para su elaboración, usamos 9 maltas nacionales e importadas de Inglaterra y lúpulos ingleses para darle el perfil tradicional del estilo.",
480, 15,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (32,"Cerveza Peñón del Águila Honigbier Lata 473ml",3 ,4 ,1 ,7, 55, "Peñón del Águila es una cervecería de la provincia de Córdoba, pionera entre las cervecerías artesanales en el uso de latas para sus productos. Fieles a la ley de pureza en (casi) todos sus estilos, acá nos presentan su Honigbier, una Helles Lager con agregado de miel natural lo cual, gracias al azúcar que aporta, la hace un poco más alcohólica que el promedio. De bajo amargor, es una cerveza con sutiles notas licorosas y muy suave en boca, haciéndola ideal para acompañar quesos complejos, platos agridulces y postres.",
280, 15,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (33,"Cerveza Temple Honey Lata 473ml",3 ,4 ,1 ,5.5, 19, "Te presentamos la nueva Cerveza Temple Honey, es una cerveza elaborada con miel orgánica que se agrega en la etapa de maduración, evitando que se transforme en alcohol, resalte el aroma y el sabor.
Es una cerveza perfectamente balanceada, refrescante, de color dorado y aroma a malta y cítricos.",
301, 10,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (34,"Cerveza BierHaus Honey SweetHeart Lata 473ml",3 ,4 ,1 ,4.5, 19, "La Cerveza BierHaus Honey SweetHeart, es una cerveza que toma como base la Golden Ale, pero con un toque de maltas caramelo y miel durante el macerado, es una cerveza de amargor muy bajo y un leve dulzor en boca.",
280, 10,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (35,"Straus Honey 355ml",2 ,4 ,1 ,4.5, 19, "De color cobrizo pálido, refrescante, fácil de tomar, de cuerpo ligero y astringencia media, turbia por su concepción misma, con notas herbáceas, frutales y particularmente cítricas. De aroma es suave y con un fugaz de granos. Sabor ligeramente amargo con carbonatación moderada.",
340, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (36,"Cerveza Portlander Honey Lata 473ml",3 ,4 ,1 ,5.2, 16, "La Cerveza Portlander Honey, es una cerveza rubia, ligeramente cobriza, con una leve turbidez producto del agregado de miel pura durante su maduración. Notas a miel, cáscaras de naranjas e interesantes dejos balsámicos.",
340, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (37,"Cerveza Ocaso Honey Lata 473ml",3 ,4 ,1 ,5, 5, "La Cerveza Ocaso Honey esta hecha con miel orgánica, agregada en el proceso de
hervor, que le aporta un aroma dulce y limpio. En boca la presencia de la miel es perceptible, pero no invasivo. Su profundo color dorado viene del uso de maltas Pilsener y Carapils.",
290, 10,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (38,"Cerveza Temple Demon Honey Lata 473ml",3 ,4 ,2 ,7.8, 18, "La nueva Temple Demon Honey es una cerveza del estilo honey, pero no tan santa! De color rojo.",
350, 5,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (39,"Cerveza Darwin Monarca Honey Lata 473ml",3 ,4 ,1 ,7, 18, "Una cerveza dorada con amargor bajo, de estilo Golden Ale, con agregado de miel de trébol blanco, manzanilla y coriandro, que hacen que sea sumamente atractiva desde el abanico aromático hasta el dulzor en boca.",
350, 15,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (40,"Cerveza Blest Honey Lata 473ml",3 ,4 ,1 ,5.2, 18, "La cerveza Blest Honey esta elaborada con miel casera obtenida de colmenas ubicadas en la ciudad de El Bolsón. Posee un bajo porcentaje de lúpulo para no opacar ni el aroma ni el sabor a la miel.
Su color es dorado y puede verse una leve turbidez, producto de la miel a baja temperatura. Es un estilo original y delicioso pero no empalaga.",
350, 10,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (41,"Cerveza Ocaso Honey Sin Alcohol Lata 473ml",3 ,4 ,1 ,0, 10, "Llega una nueva variedad de Ocaso, dulce, sueva, compañera, como la clásica Honey, pero sin alcohol!
Para que disfrutes en todo momento, como almuerzos, salidas, haciendo deporte, para quien maneje y embarazadas.",
290, 0,100); 
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (42,"Cerveza Temple Kandy Kush Honey Lata 473ml",3 ,4 ,1 ,4.5, 13, "Una cerveza de cuerpo medio y una dulzura ideal que le aporta la miel. Tu paladar va a explotar de felicidad con la Temple Kandy Kush Honey!",
550, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (43,"Cerveza Peñón del Águila Arándano Sour Lata 473ml",3 ,8 ,1 ,4, 5, "Buscando siempre experiencias superadora, Peñón del Águila nos trae su última creación: las cervezas ácidas. De bajo alcohol y amargor, se trata de una propuesta refrescante y de alta tomabilidad. Sus latas nos trasladan a lugares exóticos y cálidos, que resaltan la frescura y acidez de estas cervezas.
Inspiradas en las Catharinas sour the Brasil, los maestros cerveceros de Peñón del Águila nos traen la Arándano Sour. La acidez, limpia, delicada y refrescante de este tipo de cerveza es aportado por el accionar de Lactobacilus. Es en la etapa de la fermentación cuando se agregan los arándanos, aportando el balance, el sabor frutal y el color violeta cristalino característico de la esta cerveza. Sin dudas una opción exótica, ideal para quienes les encanta probar sabores y experiencias nuevas.",
370, 0,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (44,"Cerveza Peñón del Águila Maracuyá Sour Lata 473ml",3 ,8 ,1 ,4, 7, "Buscando siempre experiencias superadora, Peñón del Águila nos trae su última creación: las cervezas ácidas. De bajo alcohol y amargor, se trata de una propuesta refrescante y de alta tomabilidad. Sus latas nos trasladan a lugares exóticos y cálidos, que resaltan la frescura y acidez de estas cervezas.
Inspiradas en las Catharinas sour the Brasil, los maestros cerveceros de Peñón del Águila nos traen la Maracuyá Sour. La acidez, limpia, delicada y refrescante de este tipo de cerveza es aportado por el accionar de Lactobacilus. Es en la etapa de la fermentación cuando se agrega el maracuyá, aportando el balance, el sabor frutal y el color dorado cristalino. Sin dudas una opción exótica, ideal para quienes les encanta probar sabores y experiencias nuevas.",
370, 15,100);
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity) VALUES
 (45,"Cerveza Peñón del Águila Maracuyá Sour Lata 473ml",3 ,8 ,1 ,4, 7, "La nueva Cerveza ácida de Peñön con jugo de uva Frambua (Uva típica de Córdoba).
Es una cerveza , refrescante y delicada con 4% de alcohol, con el perfil frutado característico de esta uva que aporta notas a ciruela y frutos tropicales.
Peñón del Águila es una cervecería de la provincia de Córdoba, pionera entre las cervecerías artesanales en el uso de latas para sus productos. Fieles a la ley de pureza en (casi) todos sus estilos.",
370, 10,100);
