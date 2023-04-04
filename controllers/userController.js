const { User, UserActions } = require('../models/user')
const jwt = require('jsonwebtoken');

const userControls = {
    loginUser(req, res) {
        const { email, password } = req.body;
        console.log(email + " " + password);
        UserActions.getUser(req.con, email, password, (err, result) => {
            if (err) throw err;
            console.log(result);
            if (result.length == 0) {
                res.sendStatus(401)
            } else {
                const accessToken = jwt.sign({ mail: result[0].user_email, id: result[0].user_id }, process.env.TOKEN_SECRET, { expiresIn: 3600 })
                const refreshToken = jwt.sign({ mail: result[0].user_email, id: result[0].user_id }, process.env.REFRESH_TOKEN_SECRET, { expiresIn: 700000 })
                res.cookie("JWT", accessToken, {
                    maxAge: 600000,
                    httpOnly: true,
                })
                res.send({ accessToken, refreshToken })
                res.sendStatus(200);
            }
        })

    },

    async addUser(req, res) {
        console.log(req.body);
        const user = new User(req.body);
        await UserActions.isUserExist(req.con, user.email, (err, result) => {
            if (err) throw err;
            if (result.length < 0)
                console.log('error')
            else
                UserActions.insertUser(req.con, user, (err, result) => {
                    if (err) throw err;
                    console.log("git")

                    console.log(result.insertId);
                    if (result) {
                        console.log(result.insertId);
                        res.json({ "userAdded": "true", "User_id": result.insertId });
                    } else
                        res.json({ "userAdded": "false" });
                })
        })

    },

    checkUser(req, res) {
        res.json({ "verified": "true" });
    },

    async addAndSelectUser(req, res) {
        await userControls.addUser(req, res);
        UserActions.getUserByLastID(req.con, (err, result) => {
            if (err) throw err;
            res.json(result);
        })
    }
}

module.exports = userControls;