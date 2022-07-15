module.exports = (sequelize, dataTypes) => {
    let alias = 'Category';
    let cols = {
        idCategory: {
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
        tableName: "category",
        timestamps: false,
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