const express = require('express');
const router = express.Router();
const services = require("../controllers/serviceController");

router.get('/getAllServices', services.getAllServices);


module.exports = router;