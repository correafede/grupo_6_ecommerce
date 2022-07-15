module.exports = (sequelize, dataTypes) => {
    let alias = 'Color';
    let cols = {
        idColor: {
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
        tableName: "color",
        timestamps: false,
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