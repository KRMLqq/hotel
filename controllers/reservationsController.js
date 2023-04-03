const reservationsActions = require("../models/reservations");


const reservationControls = {
    addReservation(req, res) {
        let x;
        console.log(req.body);
        const body = req.body;
        reservationsActions.addReservation(req.con, body.User_id, body.Room_id, body.Service_id, body.Start, body.End, (err, result) => {
            if (err) throw err;
            x = result;
        })
        if (x)
            res.json({ "reservationAdd": "true" })
        else
            res.json({ "reservationAdd": "false" })
    }
}

module.exports = reservationControls;