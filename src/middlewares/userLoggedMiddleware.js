const db = require('../database/models');

const User = db.User;

async function userLoggedMiddleware(req, res, next) {
    res.locals.isLogged = false;
    let userLogged = false;

    if(req.cookies.userEmail){
        userLogged = req.cookies.userEmail;
    }
    else if(req.session.userLogged){
        userLogged = req.session.userLogged.email
    }
    
    try{
        if(userLogged){
            let user = await User.findOne({
                where:{
                    email: userLogged
                }
            });
             
            req.session.userLogged = user;
                
            if ( req.session.userLogged) {
                res.locals.isLogged = true;
                res.locals.userLogged = req.session.userLogged;
            }
        }
    }    
    catch(err){
        res.redirect('/users/login');
    }
    next();
};

module.exports = userLoggedMiddleware;