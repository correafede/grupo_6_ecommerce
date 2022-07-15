CREATE TABLE Size (
    idSize INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(35) NOT NULL,
    PRIMARY KEY (idSize)
);

CREATE TABLE Category (
    idCategory INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(35) NOT NULL,
    PRIMARY KEY (idCategory)
);

CREATE TABLE Color (
    idColor INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(35) NOT NULL,
    PRIMARY KEY (idColor)
);


CREATE TABLE Cervezas (idCerveza INT NOT NULL AUTO_INCREMENT, 
Nombre VARCHAR(50) NOT NULL,
id_Size INT NOT NULL,
id_Category INT NOT NULL,
id_Color INT NOT NULL,
abv DECIMAL(2,1) NOT NULL,
ibu INT UNSIGNED,
descrip TEXT NOT NULL,
price DECIMAL(5,2) NOT NULL,
discount INT UNSIGNED NOT NULL,
quantity INT UNSIGNED NOT NULL,
PRIMARY KEY (idCerveza),
FOREIGN KEY (id_Size) references Size(idSize),
FOREIGN KEY (id_Category) references Category(idCategory),
FOREIGN KEY (id_Color) references Color(idColor)
);




CREATE TABLE UserCategory (
    idUserCategory INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(35) NOT NULL,
    PRIMARY KEY (idUserCategory)
);


CREATE TABLE Usuarios (idUsuarios INT NOT NULL AUTO_INCREMENT, 
first_name VARCHAR(35) NOT NULL,
last_name VARCHAR(35) NOT NULL,
email VARCHAR(35) NOT NULL,
password VARCHAR(35) NOT NULL,
id_UserCategory INT NOT NULL,
PRIMARY KEY (idUsuarios),
FOREIGN KEY (id_UserCategory) references UserCategory(idUserCategory)
);