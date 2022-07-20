function adminMiddleware(req, res, next){
        if(req.cookies.userCategory == 1){
            res.locals.isAdmin = true;
            next();
        } else {
            return res.redirect('/')
        }
} 
module.exports = adminMiddleware;