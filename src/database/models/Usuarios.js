module.exports = (sequelize, dataTypes) => {
    let alias = 'User';
    let cols = {
        idCerveza: {
            type: dataTypes.INT(11).UNSIGNED,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
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
        abv: dataTypes.INT(10),
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
    const User = sequelize.define(alias,cols,config);

    User.associate = function (models) {
        User.belongsTo(models.UsersCategory, { // 
            as: "user",
            foreignKey: "id_Usuario"
        })
    }
    
    return User
};