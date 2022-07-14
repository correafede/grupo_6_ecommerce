module.exports = (sequelize, dataTypes) => {
    let alias = 'Size';
    let cols = {
        idSize: {
            type: dataTypes.INT(11),
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        Nombre: {
            type: dataTypes.VARCHAR(35),
            allowNull: false
        }
    };
    
    let config = {
        timestamps: true,
        createdAt: 'created_at',
        updatedAt: 'updated_at',
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