const { roomsActions, } = require('../models/rooms');

const roomsControls = {
    getRooms(req, res) {
        roomsActions.getAllRooms(req.con, (err, result) => {
            if (err) throw err;
            res.json(result);
        })
    }
}

module.exports = roomsControls;