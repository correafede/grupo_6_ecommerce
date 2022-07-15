module.exports = (sequelize, dataTypes) => {
    let alias = 'Beer';
    let cols = {
        idCerveza: {
            type: dataTypes.TINYINT(11).UNSIGNED,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        // created_at: dataTypes.TIMESTAMP,
        // updated_at: dataTypes.TIMESTAMP,
        Nombre: {
            type: dataTypes.STRING(35),
            allowNull: false
        },
        id_Size: {
            type: dataTypes.TINYINT(11),
            allowNull: false
        },
        id_Category: {
            type: dataTypes.TINYINT(11),
            allowNull: false
        },
        id_Color: {
            type: dataTypes.TINYINT(11),
            allowNull: false
        },
        abv: dataTypes.DECIMAL(2,1),
        ibu: dataTypes.TINYINT(10),
        descrip: {
            type: dataTypes.STRING(255),
            allowNull: false
        },
        price: {
            type: dataTypes.DECIMAL(5,2).UNSIGNED,
            allowNull: false
        },
        discount: dataTypes.TINYINT(100).UNSIGNED,
        quantity: {
            type: dataTypes.TINYINT(255).UNSIGNED,
            allowNull: false
        },
        image: dataTypes.STRING(255),
    };

    let config = {
        tableName: "cervezas",
        timestamps: false,
        deletedAt: false
    }
    const Beer = sequelize.define(alias,cols,config);

    Beer.associate = function (models) {
        Beer.belongsTo(models.Size, { // 
            as: "size",
            foreignKey: "id_Size"
        })
    
        Beer.belongsTo(models.Color, { // 
            as: "color",
            foreignKey: "id_Color"
        })

        Beer.belongsTo(models.Category, { // 
            as: "category",
            foreignKey: "id_Category"
        })
    }

    return Beer
};