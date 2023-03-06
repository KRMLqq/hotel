const express = require('express');
const router = express.Router();
const rooms = require("../controllers/roomsController");

router.get('/getAllRooms', rooms.getAllRooms);
router.post('/getFreeRooms', rooms.getFreeRooms);

module.exports = router;