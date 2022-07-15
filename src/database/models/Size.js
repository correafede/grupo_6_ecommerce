module.exports = (sequelize, dataTypes) => {
    let alias = 'Size';
    let cols = {
        idSize: {
            type: dataTypes.TINYINT(11),
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        Nombre: {
            type: dataTypes.STRING(35),
            allowNull: false
        }
    };
    
    let config = {
        tableName: "size",
        timestamps: false,
        deletedAt: false
    }
    const Size = sequelize.define(alias, cols, config);

    
    Size.associate = function(models) {
        Size.hasMany(models.Beer, { 
            as: "beers", 
            foreignKey: "id_Size"
        })
    }
    return Size
};