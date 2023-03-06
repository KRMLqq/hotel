const roomsActions = require('../models/rooms');

const roomsControls = {
    getAllRooms(req, res) {
        roomsActions.getAllRooms(req.con, (err, result) => {
            if (err) throw err;
            res.json(result);
        })
    },

    getFreeRooms(req, res) {
        const {startDate, endDate, personsCount} = req.body;
        roomsActions.showFreeRoom(req.con, startDate, endDate, personsCount, (error, result)=>{
            if(error) throw error;
            res.json(result);
        })
    }
}

module.exports = roomsControls;