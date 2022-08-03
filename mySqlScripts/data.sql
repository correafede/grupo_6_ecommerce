 insert into color (idColor, Nombre) values (1, 'Dorada');
insert into color (idColor, Nombre) values (2, 'Roja');
insert into color (idColor, Nombre) values (3, 'Oscura');
insert into color (idColor, Nombre) values (4, 'Negra');
insert into color (idColor, Nombre) values (5, 'Blanca');

insert into category (idCategory, Nombre) values (1, 'IPA');
insert into category (idCategory, Nombre) values (2, 'APA');
insert into category (idCategory, Nombre) values (3, 'AMBER');
insert into category (idCategory, Nombre) values (4, 'HONEY');
insert into category (idCategory, Nombre) values (5, 'TRIGO');
insert into category (idCategory, Nombre) values (6, 'STOUT');
insert into category (idCategory, Nombre) values (7, 'PORTER');
insert into category (idCategory, Nombre) values (8, 'SOUR');
insert into category (idCategory, Nombre) values (9, 'FRUTADAS');

insert into size (idSize, Nombre) values (1, 'Lata 330ml');
insert into size (idSize, Nombre) values (2, 'Botella 355ml');
insert into size (idSize, Nombre) values (3, 'Lata 473ml');
insert into size (idSize, Nombre) values (4, 'Botella 500ml');
insert into size (idSize, Nombre) values (5, 'Botella 730ml');

insert into usercategory (idUserCategory, Nombre) values (1, 'ADMIN');
insert into usercategory (idUserCategory, Nombre) values (2, 'USER');

insert into usuarios (idUsuarios, first_name, last_name, email, password, id_UserCategory, image) values (1, 'Federico', 'Correa', 'correafedde@gmail.com', '$2a$10$wzputqPphL6B9RuAKYfyaey8MV3jEhg0hjk2luaPTbn86WKVpydwi', 1, 'default-image.png');
insert into usuarios (idUsuarios, first_name, last_name, email, password, id_UserCategory, image) values (2, 'Marcos', 'Chapire', 'marcoschapire@gmail.com', '$2a$10$CC71jhqnIMkky4JZ7J.rfudN6oo.DsVuY0VFzfqrIKUpeu8MUPuKS', 1, 'default-image.png');
insert into usuarios (idUsuarios, first_name, last_name, email, password, id_UserCategory, image) values (3, 'Mauricio', 'Martin', 'mauriciomanuelmartin@gmail.com', '$2a$10$CC71jhqnIMkky4JZ7J.rfudN6oo.DsVuY0VFzfqrIKUpeu8MUPuKS', 1, 'default-image.png');
insert into usuarios (idUsuarios, first_name, last_name, email, password, id_UserCategory, image) values (4, 'Usuario', 'N', 'test@correo.com', '$2a$10$l17X2F2v5l8hmxd3O8sHS.xTgdVA2hinlIGRKeFDHTT.Hy16KEOZK', 2, 'default-image.png');

INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES 
 (1, "Andes Origen IPA Andina",3 ,1 ,1,4.5,35,"La Andes IPA Andina es una cerveza estilo IPA, valga la redundancia, de la escuela Inglesa. Como seguramente usted sabe, este estilo de cerveza se caracteriza por el amargor que le otorga su alto contenido de lúpulo. Lo que seguramente no sabe es que la IPA Andina contiene uva mendocdocina. Este ingrediente es clave para que en el paladar perciba una especie de dulzor, que a su vez hace el amargor más amigable. Esta edición limitada es ideal para acompañar platos picantones, como unas papas bravas o algún dip a base de curry.",
 200, 15,100, 'andes-origen-ipa-andina.webp', 'cerveza cervezas beer Andes Origen IPA Andina Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES 
 (2, "BierHaus Chalaland",3 ,1 ,1,5.3,42,"La cerveza Chalaland de Bierhaus es una IPA lista para disfrutar de alto vuelo resinoso y terpenoso. Es una american IPA elaborada con terpenos de marihuana, que aportan el aroma característico del cannabis, con notas dulces, pimentadas y citricas.  De amargos medio, cuenta con 42 IBU y su sabor nos recuerda a una tradicional American IPA pero con un toque especial!",
450, 10,100, 'bier-haus-chalaland-ipa.webp', 'cerveza cervezas beer BierHaus Chalaland IPA Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES 
 (3, "BierHaus IPA Superstar",3 ,1 ,1,5.7,45,"La Cerveza BierHaus Superstar IPA, es una versión americana de la tradicional IPA inglesa. Es una cerveza de intenso amargor y aroma a lúpulos cítricos y frutales. De alcohol moderado, final seco y largo retrogusto.",
330, 15,100, 'bier-haus-superstar-ipa.webp', 'cerveza cervezas beer BierHaus IPA Superstar Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES 
 (4,"Blest IPA",3 ,1 ,1,6.5,54,"La cerveza Blest IPA posee un marcado golpe de lúpulo, de color ámbar-rojizo, aportado por las maltas caramelizadas. Una característica es el aroma cítrico. Se usan lúpulos nacionales e importados. En el sabor se mezclan notas terrosas, florales y leve a hierbas. Ideal para disfrutar con comidas de sabores fuertes, carnes ahumadas, picadas de sabores intensos.",
335, 15,100, 'blest-ipa.webp', 'cerveza cervezas beer Blest IPA Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (5,"Dos Dingos Aussie",3 ,1 ,1,6.5,45,"Una Cerveza IPA estilo Australiana, muy fácil de tomar. De amargor medio y final seco, se caracteriza por su fuerte perfil tropical tanto en boca como en nariz. El doble dry hop de lúpulos australianos galaxy y enigma le aportan intensas notas tropicales a mango, melón y papaya. Perfecta para los amantes del lúpulo y de las cervezas aromáticas tropicales.",
390, 10,100, 'dos-dingos-aussie-ipa.webp', 'cerveza cervezas beer Dos Dingos Aussie IPA Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (6,"Dos Dingos Super Refreshing IPA",3 ,1 ,1,7,45,"No te quede sin esta Edición Limitada de Dos Dingos, Super Refreshing IPA es un hibrido entre una IPA de la costa este y la oeste. Con un cuerpo medio y algo turbia, es extremadamente refrescante y sabrosa. Es de color amarillo pálido y amargor balanceado. Tiene sabores y aromas cítricos dulces tropicales, proveniente de una tripe dry hop de los lúpulos Vic-Secrete y Citra (Aus)",
330, 20,100, 'dos-dingos-super-refreshing-ipa.webp', 'cerveza cervezas beer Dos Dingos Super Refreshing IPA Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (7,"Jarva IPA 5 Johnnies",3 ,1 ,1 ,4.6,32,"La cerveza JARVA 5 Johnnies es una IPA híbrida de color dorado intenso, y suave balance entre malta y lúpulos americanos. Dicho equilibrio le da una excepcional tomabilidad y sabor, y sus 5 tipos de lúpulos le otorgan un potente aroma cítrico, resinoso y a frutas tropicales. Jarva Brewing Company es la exploración de una familia emprendedora. Desde 2011 elaboran cervezas que se destacan por su calidad, creatividad e innovación.",
360, 15,100, 'jarva-5-johnnies-ipa.webp', 'cerveza cervezas beer Jarva 5 Johnies IPA Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (8,"Me Echó La Burra IPA",3 ,1 ,1 ,6,58,"Me Echó La Burra es una cerveza especial y artesanal elaborada según la tradición belga a base de cebada malteada, lúpulo y levaduras de calidad. Una Indian Pale Ale elaborada con 4 maltas y 4 lúpulos distintos. De sabor sabor dulce y frutal que después se convierte en un amargor caramelizado.",
290, 10,100, 'me-echo-la-burra-ipa.webp', 'cerveza cervezas beer Me Echo La Burra IPA Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (9,"Mesta Beepure Session IPA",4 ,1 ,1 ,4.2,50,"Cerveza rubia con aroma, sabor y amargor intenso. IPA de sesión americana, con notas frutales, cítricas y resinosas. Final refrescante y ligero.",
320, 10,100, 'mesta-beepure-session-ipa.webp', 'cerveza cervezas beer Mesta Beepurce Session IPA Botella 500ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (10,"Ocaso IPA",3 ,1 ,1,5.2,30,"La Cerveza Ocaso IPA es brillante y refrescante, con aroma a lúpulo floral y cítrico bien marcado. El uso de lúpulo Cascade en la técnica de dry-hop dinámico a bajas temperatura desprenden estos aromas particulares. De buen balance, moderado amargor, y color cobre. Gran compañera de maridajes con comidas picantes.",
300, 15,100, 'ocaso-ipa.webp', 'cerveza cervezas beer Ocaso IPA Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (11,"Ocaso IPA Sin Alcohol",3 ,1 ,1 ,0 , 30,"Ocaso nos ofrece una nueva variedad, en esta ocasión traemos una IPA como clásica, pero esta vez, Sin Alcohol! Para que disfrutes en todo momento, como almuerzos, salidas, haciendo deporte, para quien maneje y embarazadas.",
275, 15,50, 'ocaso-ipa-sin-alcohol.webp', 'cerveza cervezas beer Ocaso Sin Alcohol IPA Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (12,"Patagonia 24.7 Session IPA con Sauco",3 ,1 ,1 ,4.5 , 34,"Cerveza estilo Session IPA, muy tomable y refrescante, de amargor marcado otorgado por una combinación de lúpulos patagónicos. Cuenta con un intenso aroma a cítrico y frutal gracias a la técnica de agregado de lúpulo en frío  llamada Dry Hopping. El agregado de sauco y miel  en frio balancean el amargor del lúpulo, aportando cierta acidez y final seco. Combinación perfecta con platos con frutas, ensaladas agridulces y comida thai. Comidas con no mucha intensidad de sabor o grasa, pero sí aromáticas y especiadas. Risottos perfumados, cheesecake.",
262, 15,100, 'cerveza-patagonia-247- session-ipa.webp', 'cerveza cervezas beer Patagonia 24.7 24 7 Session con Sauco IPA Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (13,"Patagonia Küné",3 ,2 ,1 ,5 , 22,"La Patagonia Pale Ale presenta una combinación de maltas especiales, que da lugar a una cerveza de color dorado bronce brillante de leve amargor y cuerpo medio. Cerveza muy balanceada y fácil de tomar.\r\n\r\nPor sus maltas caramelo, usadas en la elaboración, hace realzar sabores caramelizados en platos de pescados y carnes grilladas, así también como postres con caramelo como flanes y budín de pan con caramelo. Las notas cítricas del lúpulo Americano Mapuche, se complementan a la perfección con salsas de naranja y limón en platos salados y dulces. Pescados grasos y pollo con todo tipo de hierbas, hacen resaltar aromas herbales del lúpulo, también.",
290, 0,100, 'patagonia-kune.webp', 'cerveza cervezas beer Patagonia Kune APA Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (14,"Ocaso Tropical APA",3 ,2 ,1 ,4.6 , 22,"Una American Pale Ale con un giro Tropical. Una cerveza muy balanceada con un moderado amargo, producto del uso de Nugget en su cocción. En su aroma se destaca la presencia de Anana y lúpulo Citra. El dulzor del Mango equilibra esta cerveza de color dorado profundo.",
275, 0,100, 'ocaso-tropical-apa.webp', 'cerveza cervezas beer Ocaso Tropical APA Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (15,"Patagonia Abrazo de Oso",3 ,3 ,2 ,5 , 10,"Cerveza de trigo especial con toque de miel. Apariencia dorada opalescente. Esta cerveza se diferencia de las típicas cervezas de trigo por usar en la receta una mezcla que balancea delicadamente la miel de abeja Patagónica. Es levemente dulce y refrescante. Con Aromas a Banana, miel y cereal\r\n\r\nMaridaje Ideal: Ensaladas Frescas, Quesos Suaves, Postres Frutales y Postres con Banana\r\n\r\nSabor: De sabores frutales, con un toque dulce por la miel patagónica.\r\nRefrescante, de cuerpo medio-liviano",
290, 0,100, 'cerveza-patagonia-abrazo-de-oso.webp', 'cerveza cervezas beer Patagonia Abrazo de Oso AMBER Lata 473ml Roja');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (17,"Jamonera",2 ,2 ,2 ,5.5 , 0,"Cerveza de alta fermentación estilo Amber Ale elaborada con maltas tostadas y caramelizadas. Tostada y de color rojizo es perfecta para acompañar un buen pedazo de jamón, embutidos ibéricos y carne a la brasa. ",
490, 0,100, 'cerveza-jamonera-amber.webp', 'cerveza cervezas beer Jamonera Botella Amber Ale APA 355ml');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (18,"Andes Origen Roja",3 ,2 ,2 ,5.5 , 0,"Andes Origen rescata el placer del momento. Una cerveza pensada para aquellas personas que valoran su tiempo libre, para quienes disfrutan de los pequeños momentos de la vida. La opción ideal para quienes quieren mimarse.\r\n\r\nLa Andes Origen Roja a es una cerveza que posee un final seco y una leve acidez que la hacen muy versátil. Es una cerveza estilo Vienna Lager, su aroma a suave caramelo y leve lúpulo logran un balance perfecto. La Andes origen Roja, color ámbar cobrizo, es una cerveza de deleite. Ideal para acompañar pescados o carnes rojas, elaborados con verduras frescas o grilladas. Pastas, ya sean con o sin relleno, con salsas suaves de tomate o con un toque de crema. Crumble de manzana o de pera.",
212, 0,100, 'andes-origen-roja.webp', 'cerveza cervezas beer roja Andes Origen Lata 473ml ');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (20,"Peñón del Águila Oktoberfest",3 ,2 ,1 ,4.8 , 0,"En Alemania, sólo cervezas que sean producidas dentro de la ciudad de Munich tienen el derecho a llamar a una cerveza \"Oktoberfest\". Como acá eso no sucede, Peñón nos ofrece la suya, una lager de color ámbar con amargor y alcohol moderados, lo que la convierte en una cerveza ideal para acompañar carnes.",
260, 0,100, 'penon-del-aguila-oktoberfest.webp', 'cerveza cervezas beer Peñón del Águila Oktoberfest Lata 473ml Dorada APA');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (21,"Birra del Borgo APA ReAle Extra 330ml",2 ,2 ,2 ,6.4 , 70,"Te presentamos la nueva cerveza Birra del Borgo ReAle Extra: ¡Una variación de la ReAle clásica que se juega con lúpulo! Se añaden diferentes variedades todas en los últimos 10 minutos de ebullición, en una dosis 3 veces superior a la ReAle. El resultado es una explosión de aromas que van desde los cítricos hasta los resinosos (pino e incienso). En el primer sorbo las papilas gustativas se ven inmersas en una potente sensación de amargor que da paso a una muy agradable y persistente nota de mandarina.",
590, 0,100, 'birra-del-borgo.webp', 'cerveza cervezas beer Birra del Borgo APA Botella 355ml');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (22,"Patagonia Küné 730ml",5 ,2 ,2 ,6.4,70,"La Patagonia Pale Ale presenta una combinación de maltas especiales, que da lugar a una cerveza de color dorado bronce brillante de leve amargor y cuerpo medio. Cerveza muy balanceada y fácil de tomar. Por sus maltas caramelo, usadas en la elaboración, hace realzar sabores caramelizados en platos de pescados y carnes grilladas, así también como postres con caramelo como flanes y budín de pan con caramelo. Las notas cítricas del lúpulo Americano Mapuche, se complementan a la perfección con salsas de naranja y limón en platos salados y dulces. Pescados grasos y pollo con todo tipo de hierbas, hacen resaltar aromas herbales del lúpulo, también.",
396, 15,100, 'cerveza-patagonia-kune.webp', 'cerveza cervezas beer Patagonia Küné APA Roja Botella 730ml');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (23,"Blest APA Lata 473ml",3 ,2 ,2 ,5.5 , 70, "La cerveza Blest APA es de cuerpo ligero y sabor intenso. Las American Pale Ale se caracterizan por su sabor a lúpulo americano y a malta. Debido al gran contenido de lúpulo, el amargos tiene una presencia constante que perdura en boca. Sus aromas son ricos en notas a lúpulo con un ligero carácter cítrico. El suave aroma a maltas contribuye a equilibrar el del lúpulo y pueden dar origen a olores ligeramente dulces y hasta herbales.",
350, 10,100, 'cerveza-blest-apa.webp', 'cerveza cervezas beer APA Roja Blest Lata 473ml');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (24,"Patagonia Escandinapa Lata 473ml",3 ,2 ,1 ,5.4 , 35, "La cerveza ESCANDINAPA es la nueva APA de Patagonia realizada con levadura traída especialmente de Noruega. Tiene un color amarillo dorado, y una espuma blanca y cremosa. Es parte de la edición Recetas Especiales, una selección de estilos exclusivos de los Refugios Patagonia que reflejan la esencia craft de la marca.",
450, 13,100, 'patagonia-escandinapa.webp', 'cerveza cervezas beer APA Dorada Lata 473ml Patagonia Escandinapa');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (25,"Leffe Ruby 330ml",2 ,3 ,2 ,5 , 10, "Haciendo de lo extraordinario algo simplemente perfecto, Leffe es una cerveza cuyo historial se remonta al año 1240. Una auténtica cerveza de abadía, esta ale debe su nombre a su color rojo rubí, traslúcido y reluciente, que obtiene del jugo de sauco y los frutos del bosque que se le añaden. De ellos, la frutilla y la frambuesa le dan su sabor refinado, mientras que los arándanos le aportan una acidez refrescante. Para agregarle complejidad, la levadura que usan todas las Leffe le aporta notas frutales y de vainilla. Un true manjar cervecero.",
565, 5,100, 'leffe-ruby.webp', 'cerveza cervezas beer Leffe Ruby Botella 355ml AMBER Roja');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (26,"Me Echó La Burra Roja 8 350ml",2 ,3 ,2 ,5 , 10, "Me Echó La Burra es una cerveza especial y artesanal elaborada según la tradición belga a base de cebada malteada, lúpulo y levaduras de calidad. Es una cerveza de doble fermentación en botella y doble maduración en bodega. Esta es una cerveza aromática, con notas marcadas de caramelo y clavo.",
270, 0,100, 'me-hecho-la-burra-roja.webp', 'cerveza cervezas beer Me Echó La Burra 8 Botella 350ml 355ml AMBER Roja');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (27,"Me Echó La Burra La Pecadora 350ml",2 ,3 ,2 ,6 , 50, "Me Echó La Burra es una cerveza especial y artesanal elaborada según la tradición belga a base de cebada malteada, lúpulo y levaduras de calidad. Es una cerveza de doble fermentación en botella y doble maduración en bodega. Con un contenido alcohólico de 6% y un blend frutal, es de las cervezas de mayor drinkability de la cervecería salteña.",
290, 0,100, 'me-hecho-la-burra-pecadora.webp', 'cerveza cervezas beer Me Echó La Burra La Pecadora 350ml Botella 355ml AMBER Roja'); 
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (28,"Straus Red Ale 355ml",3 ,3 ,2 ,4.5 , 70, "Straus Red Ale es una cerveza de color ámbar, aroma a tostado y notas a caramelo, con un grado de amargor pronunciado. Contenido alcohólico medio de 4.5%. Es una Cerveza Libre de Gluten.",
300, 0,100, 'straus-redale.webp', 'cerveza cervezas beer Straus Red Ale Lata 473ml AMBER Roja');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (29,"Peñón del Águila American Amber Lager Lata 473ml",3 ,3 ,2 ,5.6 , 32, "Esta variedad de Peñón del Águila es una lager de intenso color ámbar, con destellos de rubí y una espuma compacta y clara. Presente un aroma complejo donde la fruta tropical, durazno y cítricos de los lúpulos americanos se combinan con notas a caramelo de las maltas especiales. Ideal para acompañar fiambres, carnes asadas, quesos y postres en base a fruta.",
370, 0,100, 'penon-del-aguila-american-lager.webp', 'cerveza cervezas beer Peñón del Águila American Amber Lager Lata 473ml AMBER Roja');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (30,"Peñón del Águila Barley Wine Lata 354ml",3 ,3 ,2 ,10, 63, "La Barley Wine tiene la característica de ser una cerveza extremadamente maltosa. Como su nombre lo indica, es un vino de cebada, con un alto contenido alcohólico. Para su elaboración, usamos 9 maltas nacionales e importadas de Inglaterra y lúpulos ingleses para darle el perfil tradicional del estilo.",
480, 15,100, 'penon-del-aguila-barley-wine.webp', 'cerveza cervezas beer Peñón del Águila Barley Wine Lata 473ml AMBER Roja');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (31,"Peñón del Águila Honigbier Lata 473ml",3 ,4 ,1 ,7, 55, "Peñón del Águila es una cervecería de la provincia de Córdoba, pionera entre las cervecerías artesanales en el uso de latas para sus productos. Fieles a la ley de pureza en (casi) todos sus estilos, acá nos presentan su Honigbier, una Helles Lager con agregado de miel natural lo cual, gracias al azúcar que aporta, la hace un poco más alcohólica que el promedio. De bajo amargor, es una cerveza con sutiles notas licorosas y muy suave en boca, haciéndola ideal para acompañar quesos complejos, platos agridulces y postres.",
280, 15,100, 'penon-del-aguila-honigbier.webp', 'cerveza cervezas beer Peñón del Águila Honigbier Lata 473ml HONEY Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (32,"Temple Honey Lata 473ml",3 ,4 ,1 ,5.5, 19, "Te presentamos la nueva Cerveza Temple Honey, es una cerveza elaborada con miel orgánica que se agrega en la etapa de maduración, evitando que se transforme en alcohol, resalte el aroma y el sabor. Es una cerveza perfectamente balanceada, refrescante, de color dorado y aroma a malta y cítricos.",
301, 10,100, 'cerveza-blest-honey.webp', 'cerveza cervezas beer Temple Lata 473ml HONEY Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (33,"BierHaus Honey SweetHeart Lata 473ml",3 ,4 ,1 ,4.5, 19, "La Cerveza BierHaus Honey SweetHeart, es una cerveza que toma como base la Golden Ale, pero con un toque de maltas caramelo y miel durante el macerado, es una cerveza de amargor muy bajo y un leve dulzor en boca.",
280, 10,100, 'bierhaus-honey-sweetheart.webp', 'cerveza cervezas beer BierHaus Honey SweetHeart Lata 473ml HONEY Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (34,"Straus Honey 355ml",2 ,4 ,1 ,4.5, 19, "De color cobrizo pálido, refrescante, fácil de tomar, de cuerpo ligero y astringencia media, turbia por su concepción misma, con notas herbáceas, frutales y particularmente cítricas. De aroma es suave y con un fugaz de granos. Sabor ligeramente amargo con carbonatación moderada.",
340, 0,100, 'straus-honey.webp', 'cerveza cervezas beer Straus Botella 355ml HONEY Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (35,"Portlander Honey Lata 473ml",3 ,4 ,1 ,5.2, 16, "La Cerveza Portlander Honey, es una cerveza rubia, ligeramente cobriza, con una leve turbidez producto del agregado de miel pura durante su maduración. Notas a miel, cáscaras de naranjas e interesantes dejos balsámicos.",
340, 0,100, 'portlander-honey.webp', 'cerveza cervezas beer Portlander Lata 473ml HONEY Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (36,"Ocaso Honey Lata 473ml",3 ,4 ,1 ,5, 5, "La Cerveza Ocaso Honey esta hecha con miel orgánica, agregada en el proceso de hervor, que le aporta un aroma dulce y limpio. En boca la presencia de la miel es perceptible, pero no invasivo. Su profundo color dorado viene del uso de maltas Pilsener y Carapils.",
290, 10,100, 'ocaso-honey.webp', 'cerveza cervezas beer Ocaso Lata 473ml HONEY Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (37,"Temple Demon Honey Lata 473ml",3 ,4 ,2 ,7.8, 18, "La nueva Temple Demon Honey es una cerveza del estilo honey, pero no tan santa! De color rojo.",
350, 5,100, 'demon-honey.webp', 'cerveza cervezas beer Temple Demon Bhavi Lata 473ml HONEY Roja');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (38,"Darwin Monarca Honey Lata 473ml",3 ,4 ,1 ,7, 18, "Una cerveza dorada con amargor bajo, de estilo Golden Ale, con agregado de miel de trébol blanco, manzanilla y coriandro, que hacen que sea sumamente atractiva desde el abanico aromático hasta el dulzor en boca.",
350, 15,100, 'darwin-monarca-honey.webp', 'cerveza cervezas beer Darwin Monarca Lata 473ml HONEY Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (39,"Blest Honey Lata 473ml",3 ,4 ,1 ,5.2, 18, "La cerveza Blest Honey esta elaborada con miel casera obtenida de colmenas ubicadas en la ciudad de El Bolsón. Posee un bajo porcentaje de lúpulo para no opacar ni el aroma ni el sabor a la miel. Su color es dorado y puede verse una leve turbidez, producto de la miel a baja temperatura. Es un estilo original y delicioso pero no empalaga.",
350, 10,100, 'temple-blest.webp', 'cerveza cervezas beer Blest Lata 473ml HONEY Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (40,"Ocaso Honey Sin Alcohol Lata 473ml",3 ,4 ,1 ,0, 10, "Llega una nueva variedad de Ocaso, dulce, sueva, compañera, como la clásica Honey, pero sin alcohol! Para que disfrutes en todo momento, como almuerzos, salidas, haciendo deporte, para quien maneje y embarazadas.",
290, 0,100, 'ocaso-honey-sinalcohol.webp', 'cerveza cervezas beer Ocaso Sin Alcohol Lata 473ml HONEY Dorada'); 
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (41,"Temple Kandy Kush Honey Lata 473ml",3 ,4 ,1 ,4.5, 13, "Una cerveza de cuerpo medio y una dulzura ideal que le aporta la miel. Tu paladar va a explotar de felicidad con la Temple Kandy Kush Honey!",
550, 0,100, 'temple-kandy-kush.webp', 'cerveza cervezas beer Temple Kandy Kush Lata 473ml HONEY Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (42,"Peñón del Águila Arándano Sour Lata 473ml",3 ,8 ,1 ,4, 5, "Buscando siempre experiencias superadora, Peñón del Águila nos trae su última creación: las cervezas ácidas. De bajo alcohol y amargor, se trata de una propuesta refrescante y de alta tomabilidad. Sus latas nos trasladan a lugares exóticos y cálidos, que resaltan la frescura y acidez de estas cervezas. Inspiradas en las Catharinas sour the Brasil, los maestros cerveceros de Peñón del Águila nos traen la Arándano Sour. La acidez, limpia, delicada y refrescante de este tipo de cerveza es aportado por el accionar de Lactobacilus. Es en la etapa de la fermentación cuando se agregan los arándanos, aportando el balance, el sabor frutal y el color violeta cristalino característico de la esta cerveza. Sin dudas una opción exótica, ideal para quienes les encanta probar sabores y experiencias nuevas.",
370, 0,100, 'penon-del-aguila-arandano-sour.webp', 'cerveza cervezas beer Peñón del Águila Arándano SOUR Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (43,"Peñón del Águila Maracuyá Sour Lata 473ml",3 ,8 ,1 ,4, 7, "Buscando siempre experiencias superadora, Peñón del Águila nos trae su última creación: las cervezas ácidas. De bajo alcohol y amargor, se trata de una propuesta refrescante y de alta tomabilidad. Sus latas nos trasladan a lugares exóticos y cálidos, que resaltan la frescura y acidez de estas cervezas. Inspiradas en las Catharinas sour the Brasil, los maestros cerveceros de Peñón del Águila nos traen la Maracuyá Sour. La acidez, limpia, delicada y refrescante de este tipo de cerveza es aportado por el accionar de Lactobacilus. Es en la etapa de la fermentación cuando se agrega el maracuyá, aportando el balance, el sabor frutal y el color dorado cristalino. Sin dudas una opción exótica, ideal para quienes les encanta probar sabores y experiencias nuevas.",
370, 15,100, 'penon-del-aguila-maracuya-sour.webp', 'cerveza cervezas beer Peñón del Águila Maracuyá SOUR Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (44,"Peñón del Águila Isabella Sour Lata 473ml",3 ,8 ,1 ,4, 7, "La nueva Cerveza ácida de Peñön con jugo de uva Frambua (Uva típica de Córdoba). Es una cerveza , refrescante y delicada con 4% de alcohol, con el perfil frutado característico de esta uva que aporta notas a ciruela y frutos tropicales. Peñón del Águila es una cervecería de la provincia de Córdoba, pionera entre las cervecerías artesanales en el uso de latas para sus productos. Fieles a la ley de pureza en (casi) todos sus estilos.",
370, 10,100, 'penon-del-aguila-isabella-sour.webp', 'cerveza cervezas beer Peñón del Águila Isabella SOUR Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (45,"Erdinger Weissbier Lata 500ml", 3, 5, 1, 5.3, 13, "La Cerveza Weissbier es una cerveza de trigo, de color rubio con una leve turbiedad, de abundante espuma blanca. Su aroma se destaca por notas a lúpulo, levadura, frutal y cítrico. Su sabor es dulce, tiene poco amargor, buen cuerpo y un final dulce y completo.",
620, 10,100, "erdinger-weissbier.webp", 'cerveza cervezas beer Erdinger Weissbier 500ml TRIGO Lata 473ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (46,"Me Echó La Burra Blanca 330ml", 1, 5, 1, 4.8, 10, "Me Echó La Burra es una cerveza especial y artesanal elaborada según la tradición belga a base de cebada malteada, lúpulo y levaduras de calidad. La Blanca es una cerveza de trigo con aromas cítricos propios de las ales de trigo.",
270, 15,100,"me-hecho-la-burra-blanca.webp", 'cerveza cervezas beer Me Echó La Burra Blanca TRIGO Lata 330ml Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (47,"Ocaso Porter Tiramisu Lata 473ml",3,7,4,4.8, 30, "Esta cerveza Ocaso Porter Tiramisú es una cerveza negra con una persistente espuma con aroma a café y chocolate. Con el agregado de de vainas de vainilla. Ideal para tomar sola o con algún postre dulce.",
290, 0,100,"ocaso-tiramisu-porter.webp", 'cerveza cervezas beer Ocaso Tiramisu Lata 473ml PORTER Negra');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (48,"Almirante Donn Porter 355ml",2 ,7 ,4 ,4.5, 25, "Viví la experiencia Craft libre de Gluten. La nueva Almirante Donn Porter tiene un sabor intenso y espuma color canela, debido a la conjunción de Maltas a base de Mijo Tostado, Quinoa, Trigo Sarraceno, Sorgo y Caramelo. De amargor medio, con notas de chocolate y azúcar, que se balanceando con el sabor a café.",
450, 10,100,"almirante-donn-nother.webp", 'cerveza cervezas beer Almirante Donn Botella 355ml PORTER Negra');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (49,"Traumer Porter Lata 473ml",3 ,7 ,4 ,6, 30, "Esta cerveza tiene una combinación de maltas caramelo y tostadas, junto con lúpulos que aportan dejos herbales y terrosos. Tiene un distinguido cuerpo que entrega en paladar sabores café.",
300, 15,100,"traumer-porter.webp", 'cerveza cervezas beer Traumer Lata 473ml PORTER Negra');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (50,"BierHaus Porter Lata 473ml",3 ,7 ,3 ,5.9, 25, "Te presentamos a Alfred, la precursora del estilo Stout de origen londinense. De carácter moderadamente amargo y con un cuerpo que va medio a fuerte, se encuentra en ellas notas a caramelo, malta tostada, chocolate y toffee.",
280, 0,100,"bierhaus-porter-alfred.webp", 'cerveza cervezas beer BierHaus Lata 473ml PORTER Oscura');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (51,"Patagonia Weisse 730ml",5 ,5 ,1 ,4, 20, "Patagonia Weisse es una cerveza tipo Belgian Witbier con trigo de cremosidad característica. En su aroma predomina la cáscara de naranja y el coriandro. Una cerveza de una complejidad en aromas que resulta muy fácil de tomar por su elevada refrescancia, bajo amargor y cuerpo liviano. Su acidez característica se complementa muy bien con platos como ceviche y escabeche. Los frutos de mar son perfectos para esta cerveza con trigo. Ideal para platos cítricos como Lemon Pie o cremas de naranja y otros postres de este estilo. Platos bien condimentados también son infalibles. El coriandro de la cerveza realza los sabores de platos especiados.",
396, 10,100,"patagonia-weisse.webp", 'cerveza cervezas beer Patagonia Weisse Botella 730ml TRIGO Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (52,"Ocaso Weisse Lata 473ml",3 ,5 ,1 ,4.8, 12, "Una Cerveza con trigo, de altísima tomabilidad, de color pálido que desprende aromas a banana y clavo de olor. El agregado de piel de naranja en el proceso de maduración realza algunas notas cítricas propias de esta gran Ale. Para tomar todo el dia, todos los dias.",
290, 0,100,"ocaso-weisse.webp", 'cerveza cervezas beer Ocaso Weisse Lata 473ml TRIGO Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (53,"Weidmann Hefetrüb Lata 500ml",3 ,5 ,1 ,4, 15, "La Weidmann Hefetrüb es una cerveza de trigo que como toda Hefeweissbier no cuenta con la etapa de filtrado, dando ese aspecto turbio característico de este estilo. Se caracteriza por su sabor y aroma frutal, resaltando notas de banana, levadura y naranjas.",
480, 0,100,"cerveza-weidmann-hefetrub.webp", 'cerveza cervezas beer Weidmann Hefetrüb Lata 473ml TRIGO Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (54,"Franziskaner Weissbier Hell 500ml",4 , 9 ,5 ,4, 5, "Franziskaner Weissbier Hell es una cerveza tipo Hefeweissbier blanca de Baviera con espuma blanca exuberante. De aroma frutal, se destaca por su sabor a banana y cítricos. Fresca y sutilmente especiada, se caracteriza por su sabor dulce al final de cada trago.",
520, 10,100,"franziskaner-hell.webp", 'cerveza cervezas beer Franziskaner Weissbier Hell Botella 500ml FRUTADAS Blanca');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUES
 (55,"Franziskaner Weissbier Dunkel 500ml" ,4 ,9 ,3 ,5, 10, "La Dunkel de Franziskaner es una cerveza con mucha personalidad. Como sus nombres lo indican (Weissbier = cerveza de trigo y Dunkel = oscura) esta variedad genera una espuma de color cremoso a partir de su color oscuro y turbidez, producto del no filtrado de la cerveza. Es conocida por su aroma típico a banana proveniente de la levadura, combinado con caramelo por las maltas utilizadas. De sabor frutado al principio y especiado sobre el final, es sin dudas un claro exponente de este estilo alemán.",
520, 10,100,"franziskaner-dunkel.webp", 'cerveza cervezas beer Franziskaner Weissbier Dunkel Botella 500ml FRUTADAS Oscura');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUE
(56,"Peñón del Águila Waldbier Lata 473ml" ,3 ,9 ,2 ,5.3, 10, "Te traemos la Cerveza del Bosque. Una cerveza lager a la que se le agrega frambuesa, logrando ese aroma y sabor tan característico. De bajo amargor e intenso sabor, una cerveza fresca y veraniega para compartir con amigos. ",
370, 0,100,"penon-del-aguila-waldbier.webp", 'cerveza cervezas beer Peñón del Águila Waldbier Lata 473ml FRUTADAS Roja');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUE
(57,"Jamonera Pale Ale 355ml" ,2 ,9 ,1 ,5.5, 10, "Cerveza rubia que utiliza 3 veces más lúpulo que una cerveza normal. Sorprende por su inmenso sabor afrutado y frescura. Muy equilibrada, maltosa y amarga. Ideal para maridar con quesos grasos y fuertes. Al ser sin filtrar puede contener sedimentos en el fondo de la botella.",
450, 0,100,"cerveza-jamonera-pale-ale.webp", 'cerveza cervezas beer Jamonera Pale Ale Botella 355ml FRUTADAS Dorada');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUE 
(59,"Me Echó La Burra Negra 8 330mll" ,1 ,6 ,4 ,8, 5, "Me Echó La Burra es una cerveza especial y artesanal elaborada según la tradición belga a base de cebada malteada, lúpulo y levaduras de calidad. Es una cerveza de doble fermentación en botella y doble maduración en bodega. La Negra 8 es una ale de marcado aroma a chocolate, con notas en boca de chocolate y café.",
270, 10,100,"me-hecho-la-burra-negra.webp", 'cerveza cervezas beer  Me Echó La Burra 8 Lata 330ml STOUT Negra');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUE 
(60,"Quilmes Stout Lata 473ml" ,3 ,6 ,3 ,4.8, 10, "Elaborada con maltas tostadas que le otorgan su particular aroma, la cerveza Quilmes Stout es una lager oscura que se destaca por su cuerpo y espuma cremosa, recordando al sabor del chocolate y al amargor del café.",
149, 0,100,"quilmes-stout.webp", 'cerveza cervezas beer Quilmes Lata 473ml STOUT Oscura');
INSERT INTO cervezas (idCerveza, Nombre, id_Size, id_Category, id_Color, abv, ibu, descrip, price, discount, quantity, image, tags) VALUE 
(61,"Portlander Stout Bohemia Lata 473ml" ,3 ,6 ,4 ,6, 30, "La Cerveza Portlander Stout Bohemia, es una cerveza negra azabache con perfil aromático intenso a café y chocolate. Cuerpo sedoso y espuma cremosa, característica otorgada por la avena orgánica.",
340, 10,100,"portlander-stout.webp", 'cerveza cervezas beer Cerveza Portlander Bohemia Lata 473ml STOUT Negra');