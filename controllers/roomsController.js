const roomsActions = require('../models/rooms');

const roomsControls = {
    getAllRooms(req, res) {
        roomsActions.getAllRooms(req.con, (err, result) => {
            if (err) throw err;
            res.json(result);
        })
    }
}

module.exports = roomsControls;