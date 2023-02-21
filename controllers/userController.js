const { User, UserActions } = require('../models/user')
const jwt = require('jsonwebtoken');

const userControls = {
    loginUser(req, res) {
    const { mail, password } = req.body;

    UserActions.getUser(req.con, mail, password, (err, result) => {
        if (err) throw err;
        if (result.length == 0) {
            res.sendStatus(401)
        } else {
            const accessToken = jwt.sign({ mail: result[0].user_email, id: result[0].user_id }, process.env.TOKEN_SECRET, { expiresIn: 3600 })
            const refreshToken = jwt.sign({ mail: result[0].user_email, id: result[0].user_id }, process.env.REFRESH_TOKEN_SECRET, { expiresIn: 700000 })
        }
    })
    res.render("user", { Login: login, Password: password });
    },

    addUser(req, res) {
        console.log(req.body);
    const user = new User(req.body);

    UserActions.isUserExist(req.con, user.email, (err, result) => {
        if (err) throw err;
        if (result.length < 0)
            res.sendStatus(401)
        else
            UserActions.insertUser(req.con, user, (err, result) => {
                if (err) throw err;
                res.sendStatus(200)
            })
    })
    }
}

module.exports = userControls;