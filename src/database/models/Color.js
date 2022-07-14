module.exports = (sequelize, dataTypes) => {
    let alias = 'Color';
    let cols = {
        idColor: {
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
    const Color = sequelize.define(alias, cols, config);

    
    Color.associate = function(models) {
        Color.hasMany(models.Beer, { 
            as: "beers", 
            foreignKey: "id_Color"
        })
    }
    return Color
};