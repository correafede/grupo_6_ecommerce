module.exports = (sequelize, dataTypes) => {
    let alias = 'UserCategory';
    let cols = {
        idUserCategory: {
            type: dataTypes.TINYINT(11).UNSIGNED,
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
        tableName: "usercategory",
        timestamps: false,
        createdAt: 'created_at',
        updatedAt: 'updated_at',
        deletedAt: false
    }
    const UserCategory = sequelize.define(alias,cols,config);

    UserCategory.associate = function (models) {
        UserCategory.hasMany(models.User, { 
            as: "users",
            foreignKey: "id_UserCategory"
        })
    }
    
    return UserCategory
};