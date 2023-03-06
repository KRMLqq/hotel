const reservationsActions = require("../models/reservations");


const reservationControls = {
    addReservation(req, res) {
        let x;
        const {user, room, service, start, end} = req.body;
        reservationsActions.addReservation(req.con, user,room,service,start,end, (err, result) => {
            if(err) throw err;
            x = result;
        })
        if(x)
            res.json({"reservationAdd": "true"})
        else
            res.json({"reservationAdd": "false"})
    }
}

module.exports = reservationControls;