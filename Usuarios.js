// module.exports = (sequelize, dataTypes) => {
//     let alias = 'User';
//     let cols = {
//         idUsuarios: {
//             type: dataTypes.TINYINT(11).UNSIGNED,
//             primaryKey: true,
//             allowNull: false,
//             autoIncrement: true
//         },
//         first_name: {
//             type: dataTypes.STRING(35),
//             allowNull: false
//         },
//         last_name: {
//             type: dataTypes.STRING(35),
//             allowNull: false
//         },
//         email: {
//             type: dataTypes.STRING(35),
//             allowNull: false
//         },
//         password: {
//             type: dataTypes.STRING(100),
//             allowNull: false
//         },
//         id_UserCategory: {
//             type: dataTypes.TINYINT(11),
//             allowNull: false
//         }
//     };

//     let config = {
//         timestamps: true,
//         createdAt: 'created_at',
//         updatedAt: 'updated_at',
//         deletedAt: false
//     }
//     const User = sequelize.define(alias,cols,config);

//     User.associate = function (models) {
//         User.belongsTo(models.UsersCategory, { // 
//             as: "usercategory",
//             foreignKey: "id_UserCategory"
//         })
//     }
    
//     return User
// };