const express = require('express');
const bodyParser = require('body-parser');
const con = require('./config/database')

const app = express();

app.use(bodyParser.urlencoded({ extended: false }))

app.set("view engine", "hbs");

app.get("/", (req, res) => {
    res.sendStatus(200);
})

app.use(function(req, res, next) {
    req.con = con
    next()
})

app.use('/', require('./routes/user'))


app.listen(8000, () => {
    console.log("Server start");
})