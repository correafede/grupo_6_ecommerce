let userController = {
   login: (req, res) => { 
        res.render("login");
    },
    register: (req, res) => { 
        res.render("register");
    },
    create: (req, res) => { 
        res.render("create");
    },
    modify: (req, res) => { 
        res.render("modify");
    }
}

module.exports = userController;