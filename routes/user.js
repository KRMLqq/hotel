const express = require('express');
const userView = require("../controllers/userController")
const router = express.Router();
const auth = require('../middlewares/authenticate')

router.post("/user", userView.loginUser);
router.post("/addUser", userView.addUser);


module.exports = router;