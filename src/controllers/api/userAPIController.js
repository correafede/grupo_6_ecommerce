const path = require('path');
const db = require('../../database/models');
const sequelize = db.sequelize;
const { Op } = require("sequelize");
const fs = require('fs');
const bcryptjs = require('bcryptjs');

const User = db.User;


const userAPIController = {
    list: (req, res) => {
        User.findAll({
            include: ['usercategory']
        })
        .then(users => {
            let response = {
                count: users.length,
                users
            }
                res.json(response);
            })
    },
    
    detail: (req, res) => {
        User.findByPk(req.params.id,
            {
                include : ['usercategory']
            })
            .then(user => {
                let response = {
                    count: user.length,
                    users: {
                        id: user.idUsuario,
                        firstname: user.first_name,
                        lastname:user.last_name,
                        email: user.email,
                        image: 'http://localhost:3000/img/users/default-image.png'
                    },
                }
                res.json(response);
            });
    } 
}

module.exports = userAPIController;