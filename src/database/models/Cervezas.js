module.exports = (sequelize, dataTypes) => {
    let alias = 'Beer';
    let cols = {
        idCerveza: {
            type: dataTypes.INT(11).UNSIGNED,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        // created_at: dataTypes.TIMESTAMP,
        // updated_at: dataTypes.TIMESTAMP,
        Nombre: {
            type: dataTypes.VARCHAR(35),
            allowNull: false
        },
        id_Size: {
            type: dataTypes.INT(11),
            allowNull: false
        },
        id_Category: {
            type: dataTypes.INT(11),
            allowNull: false
        },
        id_Color: {
            type: dataTypes.INT(11),
            allowNull: false
        },
        abv: dataTypes.DECIMAL(2,1),
        ibu: dataTypes.INT(10),
        desc: {
            type: dataTypes.VARCHAR(255),
            allowNull: false
        },
        price: {
            type: dataTypes.DECIMAL(5,2).UNSIGNED,
            allowNull: false
        },
        discount: dataTypes.INT(100).UNSIGNED,
        quantity: {
            type: dataTypes.TINYINT(255).UNSIGNED,
            allowNull: false
        },
    };

    let config = {
        timestamps: true,
        createdAt: 'created_at',
        updatedAt: 'updated_at',
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