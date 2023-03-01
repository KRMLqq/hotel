const jwt = require('jsonwebtoken')

const authenticate = async (req, res, next) => {
    const token = req.cookies.JWT;
    console.log(token);
    if (token === null)
        return res.json({ "verified": "false" });

    await jwt.verify(token, process.env.TOKEN_SECRET, (err, user) => {
        if (err)
            return res.json({ "verified": "false" });
        next();
    })
}

module.exports = authenticate;