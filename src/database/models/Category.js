module.exports = (sequelize, dataTypes) => {
    let alias = 'Category';
    let cols = {
        idCategory: {
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
    const Category = sequelize.define(alias, cols, config);

    
    Category.associate = function(models) {
        Category.hasMany(models.Beer, { 
            as: "beers", 
            foreignKey: "id_Category"
        })
    }
    return Category
};