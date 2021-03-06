CREATE DATABASE  IF NOT EXISTS `birrashop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `birrashop`;
-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: birrashop
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `idCategory` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(35) NOT NULL,
  PRIMARY KEY (`idCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'IPA'),(2,'APA'),(3,'AMBER'),(4,'HONEY'),(5,'TRIGO'),(6,'STOUT'),(7,'PORTER'),(8,'SOUR'),(9,'FRUTADAS'),(10,'SIN ALCOHOL');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cervezas`
--

DROP TABLE IF EXISTS `cervezas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cervezas` (
  `idCerveza` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `id_Size` int(11) NOT NULL,
  `id_Category` int(11) NOT NULL,
  `id_Color` int(11) NOT NULL,
  `abv` decimal(2,1) NOT NULL,
  `ibu` int(10) unsigned DEFAULT NULL,
  `descrip` text NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `discount` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idCerveza`),
  KEY `id_Size` (`id_Size`),
  KEY `id_Category` (`id_Category`),
  KEY `id_Color` (`id_Color`),
  CONSTRAINT `cervezas_ibfk_1` FOREIGN KEY (`id_Size`) REFERENCES `size` (`idSize`),
  CONSTRAINT `cervezas_ibfk_2` FOREIGN KEY (`id_Category`) REFERENCES `category` (`idCategory`),
  CONSTRAINT `cervezas_ibfk_3` FOREIGN KEY (`id_Color`) REFERENCES `color` (`idColor`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cervezas`
--

LOCK TABLES `cervezas` WRITE;
/*!40000 ALTER TABLE `cervezas` DISABLE KEYS */;
INSERT INTO `cervezas` VALUES (1,'Cerveza Andes Origen IPA Andina',3,1,1,4.5,35,'La Andes IPA Andina es una cerveza estilo IPA, valga la redundancia, de la escuela Inglesa. Como seguramente usted sabe, este estilo de cerveza se caracteriza por el amargor que le otorga su alto contenido de l??pulo. Lo que seguramente no sabe es que la IPA Andina contiene uva mendocdocina. Este ingrediente es clave para que en el paladar perciba una especie de dulzor, que a su vez hace el amargor m??s amigable. Esta edici??n limitada es ideal para acompa??ar platos picantones, como unas papas bravas o alg??n dip a base de curry.',200.00,15,100),(2,'Cerveza BierHaus Chalaland',3,1,1,5.3,42,'La cerveza Chalaland de Bierhaus es una IPA lista para disfrutar de alto vuelo resinoso y terpenoso. Es una american IPA elaborada con terpenos de marihuana, que aportan el aroma caracter??stico del cannabis, con notas dulces, pimentadas y citricas.  De amargos medio, cuenta con 42 IBU y su sabor nos recuerda a una tradic\nional American IPA pero con un toque especial!',450.00,10,100),(3,'Cerveza BierHaus IPA Supersta',3,1,1,5.7,45,'La Cerveza BierHaus Superstar IPA, es una versi??n americana de la tradicional IPA inglesa. Es una cerveza de intenso amargor y aroma a l??pulos c??tricos y frutales. De alcohol moderado, final seco y largo retrogusto.',330.00,15,100),(4,'Cerveza Blest IPA',3,1,1,6.5,54,'La cerveza Blest IPA posee un marcado golpe de l??pulo, de color ??mbar-rojizo, aportado por las maltas caramelizadas. Una caracter??stica es el aroma c??trico. Se usan l??pulos nacionales e importados. En el sabor se mezclan notas terrosas, florales y leve a hierbas. Ideal para disfrutar con comidas de sabores fuertes, carnes ahumadas\n, picadas de sabores intensos.',335.00,15,100),(5,'Cerveza Dos Dingos Aussie',3,1,1,6.5,45,'Una Cerveza IPA estilo Australiana, muy f??cil de tomar. De amargor medio y final seco, se caracteriza por su fuerte perfil tropical tanto en boca como en nariz. El doble dry hop de l??pulos australianos galaxy y enigma le aportan intensas notas tropicales a mango, mel??n y papaya. Perfecta para los amantes del l??pulo y de las cervezas arom??ticas tropicales.',390.00,10,100),(6,'Dos Dingos Super Refreshing IPA',3,1,1,7.0,45,'No te quede sin esta Edici??n Limitada de Dos Dingos, Super Refreshing IPA es un hibrido entre una IPA de la costa este y la oeste. Con un cuerpo medio y algo turbia, es extremadamente refrescante y sabrosa. Es de color amarillo p??lido y amargor balanceado. Tiene sabores y aromas c??tricos dulces tropicales, proveniente de una tripe dry hop de los l??pulos Vic-Secrete y Citra (Aus)',330.00,20,100),(7,'Cerveza Jarva IPA 5 Johnnies',3,1,1,4.6,32,'La cerveza JARVA 5 Johnnies es una IPA h??brida de color dorado intenso, y suave balance entre malta y l??pulos americanos. Dicho equilibrio le da una excepcional tomabilidad y sabor, y sus 5 tipos de l??pulos le otorgan un potente aroma c??trico, resinoso y a frutas tropicales. Jarva Brewing Company es la exploraci??n de una familia emprendedora. Desde 2011 elaboran cervezas que se destacan por su calidad, creatividad e innovaci??n.',360.00,15,100),(8,'Cerveza Me Ech?? La Burra IPA',3,1,1,6.0,58,'Me Ech?? La Burra es una cerveza especial y artesanal elaborada seg??n la tradici??n belga a base de cebada malteada, l??pulo y levaduras de calidad. Una Indian Pale Ale elaborada con 4 maltas y 4 l??pulos distintos. De sabor sabor dulce y frutal que despu??s se convierte en un amargor caramelizado.',290.00,10,100),(9,'Cerveza Mesta Beepure Session IPA',4,1,1,4.2,50,'Cerveza rubia con aroma, sabor y amargor intenso. IPA de sesi??n americana, con notas frutales, c??tricas y resinosas. Final refrescante y ligero.',320.00,10,100),(10,'Cerveza Ocaso IPA',3,1,1,5.2,30,'La Cerveza Ocaso IPA es brillante y refrescante, con aroma a l??pulo floral y c??trico bien marcado. El uso de l??pulo Cascade en la t??cnica de dry-hop din??mico a bajas temperatura desprenden estos aromas particulares. De buen balance, moderado amargor, y color cobre. Gran compa??era de maridajes con comidas picantes.',300.00,15,100),(11,'Cerveza Ocaso IPA Sin Alcohol',3,10,1,0.0,30,'Ocaso nos ofrece una nueva variedad, en esta ocasi??n traemos una IPA como cl??sica, pero esta vez, Sin Alcohol! Para que disfrutes en todo momento, como almuerzos, salidas, haciendo deporte, para quien maneje y embarazadas.',275.00,15,50),(12,'Cerveza Patagonia 24.7 Session IPA con Sauco',3,1,1,4.5,34,'Cerveza estilo Session IPA, muy tomable y refrescante, de amargor marcado otorgado por una combinaci??n de l??pulos patag??nicos. Cuenta con un intenso aroma a c??trico y frutal gracias a la t??cnica de agregado de l??pulo en fr??o  llamada Dry Hopping. El agregado de sauco y miel  en frio balancean el amargor del l??pulo, aportando cierta acidez y final seco. Combinaci??n perfecta con platos con frutas, ensaladas agridulces y comida thai. Comidas con no mucha intensidad de sabor o grasa, pero s?? arom??ticas y especiadas. Risottos perfumados, cheesecake.',262.00,15,100),(13,'Cerveza Patagonia K??n??',3,2,1,5.0,22,'La Patagonia Pale Ale presenta una combinaci??n de maltas especiales, que da lugar a una cerveza de color dorado bronce brillante de leve amargor y cuerpo medio. Cerveza muy balanceada y f??cil de tomar.\r\n\r\nPor sus maltas caramelo, usadas en la elaboraci??n, hace realzar sabores caramelizados en platos de pescados y carnes grilladas, as?? tambi??n como postres con caramelo como flanes y bud??n de pan con caramelo. Las notas c??tricas del l??pulo Americano Mapuche, se complementan a la perfecci??n con salsas de naranja y lim??n en platos salados y dulces. Pescados grasos y pollo con todo tipo de hierbas, hacen resaltar aromas herbales del l??pulo, tambi??n.',290.00,0,100),(14,'Cerveza Ocaso Tropical APA',3,2,1,4.6,22,'Una American Pale Ale con un giro Tropical. Una cerveza muy balanceada con un moderado amargo, producto del uso de Nugget en su cocci??n. En su aroma se destaca la presencia de Anana y l??pulo Citra. El dulzor del Mango equilibra esta cerveza de color dorado profundo.',275.00,0,100),(15,'Cerveza Patagonia Abrazo de Oso',3,3,2,5.0,10,'Cerveza de trigo especial con toque de miel. Apariencia dorada opalescente. Esta cerveza se diferencia de las t??picas cervezas de trigo por usar en la receta una mezcla que balancea delicadamente la miel de abeja Patag??nica. Es levemente dulce y refrescante. Con Aromas a Banana, miel y cereal\r\n\r\nMaridaje Ideal: Ensaladas Frescas, Quesos Suaves, Postres Frutales y Postres con Banana\r\n\r\nSabor: De sabores frutales, con un toque dulce por la miel patag??nica.\r\nRefrescante, de cuerpo medio-liviano',290.00,0,100),(16,'Cerveza Pe????n del ??guila Ar??ndano Sour',3,2,1,4.0,0,'Buscando siempre experiencias superadora, Pe????n del ??guila nos trae su ??ltima creaci??n: las cervezas ??cidas. De bajo alcohol y amargor, se trata de una propuesta refrescante y de alta tomabilidad. Sus latas nos trasladan a lugares ex??ticos y c??lidos, que resaltan la frescura y acidez de estas cervezas. \r\n\r\nInspiradas en las Catharinas sour the Brasil, los maestros cerveceros de Pe????n del ??guila nos traen la Ar??ndano Sour. La acidez, limpia, delicada y refrescante de este tipo de cerveza es aportado por el accionar de Lactobacilus. Es en la etapa de la fermentaci??n cuando se agregan los ar??ndanos, aportando el balance, el sabor frutal y el color violeta cristalino caracter??stico de la esta cerveza. Sin dudas una opci??n ex??tica, ideal para quienes les encanta probar sabores y experiencias nuevas. ',300.00,0,100),(17,'Cerveza Jamonera',2,2,1,5.5,0,'Cerveza de alta fermentaci??n estilo Amber Ale elaborada con maltas tostadas y caramelizadas. Tostada y de color rojizo es perfecta para acompa??ar un buen pedazo de jam??n, embutidos ib??ricos y carne a la brasa. ',490.00,0,100),(18,'Cerveza Andes Origen Roja',3,2,1,5.5,0,'Andes Origen rescata el placer del momento. Una cerveza pensada para aquellas personas que valoran su tiempo libre, para quienes disfrutan de los peque??os momentos de la vida. La opci??n ideal para quienes quieren mimarse.\r\n\r\nLa Andes Origen Roja a es una cerveza que posee un final seco y una leve acidez que la hacen muy vers??til. Es una cerveza estilo Vienna Lager, su aroma a suave caramelo y leve l??pulo logran un balance perfecto. La Andes origen Roja, color ??mbar cobrizo, es una cerveza de deleite. Ideal para acompa??ar pescados o carnes rojas, elaborados con verduras frescas o grilladas. Pastas, ya sean con o sin relleno, con salsas suaves de tomate o con un toque de crema. Crumble de manzana o de pera.',212.00,0,100),(19,'Cerveza Pe????n del ??guila Waldbier',3,2,1,5.3,0,'Te traemos la \"Cerveza del Bosque\". Una cerveza lager a la que se le agrega frambuesa, logrando ese aroma y sabor tan caracter??stico. De bajo amargor e intenso sabor, una cerveza fresca y veraniega para compartir con amigos. ',300.00,0,100),(20,'Cerveza Pe????n del ??guila Oktoberfest',3,2,1,4.8,0,'En Alemania, s??lo cervezas que sean producidas dentro de la ciudad de Munich tienen el derecho a llamar a una cerveza \"Oktoberfest\". Como ac?? eso no sucede, Pe????n nos ofrece la suya, una lager de color ??mbar con amargor y alcohol moderados, lo que la convierte en una cerveza ideal para acompa??ar carnes.',260.00,0,100),(21,'Cerveza Birra del Borgo APA ReAle Extra 330ml',2,2,2,6.4,70,'Te presentamos la nueva cerveza Birra del Borgo ReAle Extra:\n??Una variaci??n de la ReAle cl??sica que se juega con l??pulo!\nSe a??aden diferentes variedades todas en los ??ltimos 10 minutos de ebullici??n, en una dosis 3 veces superior a la ReAle. El resultado es una explosi??n de aromas que van desde los c??tricos hasta los resinosos (pino e incienso).\nEn el primer sorbo las papilas gustativas se ven inmersas en una potente sensaci??n de amargor que da paso a una muy agradable y persistente nota de mandarina.',590.00,0,100),(22,'Cerveza Birra del Borgo APA ReAle Extra 330ml',2,2,2,6.4,70,'Te presentamos la nueva cerveza Birra del Borgo ReAle Extra:\n??Una variaci??n de la ReAle cl??sica que se juega con l??pulo!\nSe a??aden diferentes variedades todas en los ??ltimos 10 minutos de ebullici??n, en una dosis 3 veces superior a la ReAle. El resultado es una explosi??n de aromas que van desde los c??tricos hasta los resinosos (pino e incienso).\nEn el primer sorbo las papilas gustativas se ven inmersas en una potente sensaci??n de amargor que da paso a una muy agradable y persistente nota de mandarina.',590.00,0,100),(24,'Cerveza Blest APA Lata 473ml',3,2,2,5.5,70,'La cerveza Blest APA es de cuerpo ligero y sabor intenso. Las American Pale Ale se caracterizan por su sabor a l??pulo americano y a malta. Debido al gran contenido de l??pulo, el amargos tiene una presencia constante que perdura en boca.\nSus aromas son ricos en notas a l??pulo con un ligero car??cter c??trico. El suave aroma a maltas contribuye a equilibrar el del l??pulo y pueden dar origen a olores ligeramente dulces y hasta herbales.',350.00,10,100),(25,'Cerveza Patagonia Escandinapa Lata 473ml',3,2,1,5.4,35,'La cerveza ESCANDINAPA es la nueva APA de Patagonia realizada con levadura tra??da especialmente de Noruega. Tiene un color amarillo dorado, y una espuma blanca y cremosa. Es parte de la edici??n Recetas Especiales, una selecci??n de estilos exclusivos de los Refugios Patagonia que reflejan la esencia craft de la marca.',450.00,13,100),(26,'Cerveza Leffe Ruby 330ml',2,3,2,5.0,10,'Haciendo de lo extraordinario algo simplemente perfecto, Leffe es una cerveza cuyo historial se remonta al a??o 1240. Una aut??ntica cerveza de abad??a, esta ale debe su nombre a su color rojo rub??, trasl??cido y reluciente, que obtiene del jugo de sauco y los frutos del bosque que se le a??aden. De ellos, la frutilla y la frambuesa le dan su sabor refinado, mientras que los ar??ndanos le aportan una acidez refrescante. Para agregarle complejidad, la levadura que usan todas las Leffe le aporta notas frutales y de vainilla. Un true manjar cervecero.',565.00,5,100),(27,'Cerveza Me Ech?? La Burra Roja 8 350ml',2,3,2,5.0,10,'Me Ech?? La Burra es una cerveza especial y artesanal elaborada seg??n la tradici??n belga a base de cebada malteada, l??pulo y levaduras de calidad. Es una cerveza de doble fermentaci??n en botella y doble maduraci??n en bodega. Esta es una cerveza arom??tica, con notas marcadas de caramelo y clavo.',270.00,0,100),(28,'Cerveza Me Ech?? La Burra La Pecadora 350ml',2,3,1,6.0,50,'Me Ech?? La Burra es una cerveza especial y artesanal elaborada seg??n la tradici??n belga a base de cebada malteada, l??pulo y levaduras de calidad. Es una cerveza de doble fermentaci??n en botella y doble maduraci??n en bodega. Con un contenido alcoh??lico de 6% y un blend frutal, es de las cervezas de mayor drinkability de la cervecer??a salte??a.',290.00,0,100),(29,'Straus Red Ale 355ml',3,3,1,4.5,70,'Straus Red Ale es una cerveza de color ??mbar, aroma a tostado y notas a caramelo, con un grado de amargor pronunciado. Contenido alcoh??lico medio de 4.5%. Es una Cerveza Libre de Gluten.',300.00,0,100),(30,'Cerveza Pe????n del ??guila American Amber Lager Lata',3,3,1,5.6,32,'Esta variedad de Pe????n del ??guila es una lager de intenso color ??mbar, con destellos de rub?? y una espuma compacta y clara. Presente un aroma complejo donde la fruta tropical, durazno y c??tricos de los l??pulos americanos se combinan con notas a caramelo de las maltas especiales.\nIdeal para acompa??ar fiambres, carnes asadas, quesos y postres en base a fruta.',370.00,0,100),(31,'Cerveza Pe????n del ??guila Barley Wine Lata 354ml',3,3,1,9.9,63,'La Barley Wine tiene la caracter??stica de ser una cerveza extremadamente maltosa. Como su nombre lo indica, es un vino de cebada, con un alto contenido alcoh??lico. Para su elaboraci??n, usamos 9 maltas nacionales e importadas de Inglaterra y l??pulos ingleses para darle el perfil tradicional del estilo.',480.00,15,100),(32,'Cerveza Pe????n del ??guila Honigbier Lata 473ml',3,4,1,7.0,55,'Pe????n del ??guila es una cervecer??a de la provincia de C??rdoba, pionera entre las cervecer??as artesanales en el uso de latas para sus productos. Fieles a la ley de pureza en (casi) todos sus estilos, ac?? nos presentan su Honigbier, una Helles Lager con agregado de miel natural lo cual, gracias al az??car que aporta, la hace un poco m??s alcoh??lica que el promedio. De bajo amargor, es una cerveza con sutiles notas licorosas y muy suave en boca, haci??ndola ideal para acompa??ar quesos complejos, platos agridulces y postres.',280.00,15,100),(33,'Cerveza Temple Honey Lata 473ml',3,4,1,5.5,19,'Te presentamos la nueva Cerveza Temple Honey, es una cerveza elaborada con miel org??nica que se agrega en la etapa de maduraci??n, evitando que se transforme en alcohol, resalte el aroma y el sabor.\nEs una cerveza perfectamente balanceada, refrescante, de color dorado y aroma a malta y c??tricos.',301.00,10,100),(34,'Cerveza BierHaus Honey SweetHeart Lata 473ml',3,4,1,4.5,19,'La Cerveza BierHaus Honey SweetHeart, es una cerveza que toma como base la Golden Ale, pero con un toque de maltas caramelo y miel durante el macerado, es una cerveza de amargor muy bajo y un leve dulzor en boca.',280.00,10,100),(35,'Straus Honey 355ml',2,4,1,4.5,19,'De color cobrizo p??lido, refrescante, f??cil de tomar, de cuerpo ligero y astringencia media, turbia por su concepci??n misma, con notas herb??ceas, frutales y particularmente c??tricas. De aroma es suave y con un fugaz de granos. Sabor ligeramente amargo con carbonataci??n moderada.',340.00,0,100),(36,'Cerveza Portlander Honey Lata 473ml',3,4,1,5.2,16,'La Cerveza Portlander Honey, es una cerveza rubia, ligeramente cobriza, con una leve turbidez producto del agregado de miel pura durante su maduraci??n. Notas a miel, c??scaras de naranjas e interesantes dejos bals??micos.',340.00,0,100),(37,'Cerveza Ocaso Honey Lata 473ml',3,4,1,5.0,5,'La Cerveza Ocaso Honey esta hecha con miel org??nica, agregada en el proceso de\nhervor, que le aporta un aroma dulce y limpio. En boca la presencia de la miel es perceptible, pero no invasivo. Su profundo color dorado viene del uso de maltas Pilsener y Carapils.',290.00,10,100),(38,'Cerveza Temple Demon Honey Lata 473ml',3,4,2,7.8,18,'La nueva Temple Demon Honey es una cerveza del estilo honey, pero no tan santa! De color rojo.',350.00,5,100),(39,'Cerveza Darwin Monarca Honey Lata 473ml',3,4,1,7.0,18,'Una cerveza dorada con amargor bajo, de estilo Golden Ale, con agregado de miel de tr??bol blanco, manzanilla y coriandro, que hacen que sea sumamente atractiva desde el abanico arom??tico hasta el dulzor en boca.',350.00,15,100),(40,'Cerveza Blest Honey Lata 473ml',3,4,1,5.2,18,'La cerveza Blest Honey esta elaborada con miel casera obtenida de colmenas ubicadas en la ciudad de El Bols??n. Posee un bajo porcentaje de l??pulo para no opacar ni el aroma ni el sabor a la miel.\nSu color es dorado y puede verse una leve turbidez, producto de la miel a baja temperatura. Es un estilo original y delicioso pero no empalaga.',350.00,10,100),(41,'Cerveza Ocaso Honey Sin Alcohol Lata 473ml',3,4,1,0.0,10,'Llega una nueva variedad de Ocaso, dulce, sueva, compa??era, como la cl??sica Honey, pero sin alcohol!\nPara que disfrutes en todo momento, como almuerzos, salidas, haciendo deporte, para quien maneje y embarazadas.',290.00,0,100),(42,'Cerveza Temple Kandy Kush Honey Lata 473ml',3,4,1,4.5,13,'Una cerveza de cuerpo medio y una dulzura ideal que le aporta la miel. Tu paladar va a explotar de felicidad con la Temple Kandy Kush Honey!',550.00,0,100),(43,'Cerveza Pe????n del ??guila Ar??ndano Sour Lata 473ml',3,8,1,4.0,5,'Buscando siempre experiencias superadora, Pe????n del ??guila nos trae su ??ltima creaci??n: las cervezas ??cidas. De bajo alcohol y amargor, se trata de una propuesta refrescante y de alta tomabilidad. Sus latas nos trasladan a lugares ex??ticos y c??lidos, que resaltan la frescura y acidez de estas cervezas.\nInspiradas en las Catharinas sour the Brasil, los maestros cerveceros de Pe????n del ??guila nos traen la Ar??ndano Sour. La acidez, limpia, delicada y refrescante de este tipo de cerveza es aportado por el accionar de Lactobacilus. Es en la etapa de la fermentaci??n cuando se agregan los ar??ndanos, aportando el balance, el sabor frutal y el color violeta cristalino caracter??stico de la esta cerveza. Sin dudas una opci??n ex??tica, ideal para quienes les encanta probar sabores y experiencias nuevas.',370.00,0,100),(44,'Cerveza Pe????n del ??guila Maracuy?? Sour Lata 473ml',3,8,1,4.0,7,'Buscando siempre experiencias superadora, Pe????n del ??guila nos trae su ??ltima creaci??n: las cervezas ??cidas. De bajo alcohol y amargor, se trata de una propuesta refrescante y de alta tomabilidad. Sus latas nos trasladan a lugares ex??ticos y c??lidos, que resaltan la frescura y acidez de estas cervezas.\nInspiradas en las Catharinas sour the Brasil, los maestros cerveceros de Pe????n del ??guila nos traen la Maracuy?? Sour. La acidez, limpia, delicada y refrescante de este tipo de cerveza es aportado por el accionar de Lactobacilus. Es en la etapa de la fermentaci??n cuando se agrega el maracuy??, aportando el balance, el sabor frutal y el color dorado cristalino. Sin dudas una opci??n ex??tica, ideal para quienes les encanta probar sabores y experiencias nuevas.',370.00,15,100),(45,'Cerveza Pe????n del ??guila Maracuy?? Sour Lata 473ml',3,8,1,4.0,7,'La nueva Cerveza ??cida de Pe????n con jugo de uva Frambua (Uva t??pica de C??rdoba).\nEs una cerveza , refrescante y delicada con 4% de alcohol, con el perfil frutado caracter??stico de esta uva que aporta notas a ciruela y frutos tropicales.\nPe????n del ??guila es una cervecer??a de la provincia de C??rdoba, pionera entre las cervecer??as artesanales en el uso de latas para sus productos. Fieles a la ley de pureza en (casi) todos sus estilos.',370.00,10,100);
/*!40000 ALTER TABLE `cervezas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color` (
  `idColor` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(35) NOT NULL,
  PRIMARY KEY (`idColor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Dorada'),(2,'Roja'),(3,'Oscura'),(4,'Negra');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `size` (
  `idSize` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(35) NOT NULL,
  PRIMARY KEY (`idSize`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,'Lata 330ml'),(2,'Botella 355ml'),(3,'Lata 473ml'),(4,'Botella 500ml');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercategory`
--

DROP TABLE IF EXISTS `usercategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usercategory` (
  `idUserCategory` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(35) NOT NULL,
  PRIMARY KEY (`idUserCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercategory`
--

LOCK TABLES `usercategory` WRITE;
/*!40000 ALTER TABLE `usercategory` DISABLE KEYS */;
INSERT INTO `usercategory` VALUES (1,'ADMIN'),(2,'USER');
/*!40000 ALTER TABLE `usercategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(35) NOT NULL,
  `last_name` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_UserCategory` int(11) NOT NULL,
  PRIMARY KEY (`idUsuarios`),
  KEY `id_UserCategory` (`id_UserCategory`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_UserCategory`) REFERENCES `usercategory` (`idUserCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Federico','Correa','correafedde@gmail.com','$2a$10$J6hogqIYsL7voMehYsspqOknt3db',1),(2,'Marcos','Chapire','marcoschapire@gmail.com','$2a$10$CC71jhqnIMkky4JZ7J.rfudN6oo.',1),(3,'Mauricio','Martin','mauriciomanuelmartin@gmail.com','$2a$10$CC71jhqnIMkky4JZ7J.rfudN6oo.',1),(4,'Usuario','N','test@correo.com','$2a$10$l17X2F2v5l8hmxd3O8sHS.xTgdVA',2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'birrashop'
--

--
-- Dumping routines for database 'birrashop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-14 21:14:57
