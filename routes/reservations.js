const express = require('express');
const router = express.Router();
const reservations = require('../controllers/reservationsController');

router.post("/addReservation", reservations.addReservation);

module.exports = router;
