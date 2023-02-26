const express = require('express');
const router = express.Router();
const rooms = require("../controllers/roomsController");

router.get('/getAllRooms', rooms.getRooms);

module.exports = router;