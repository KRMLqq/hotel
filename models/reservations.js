const reservationsActions = {
    getUserReservations(con, user_id, callback) {
        con.query(`SELECT * FROM reservations WHERE user_id=${user_id}`, callback)
    },

    addReservation(con, User_id, Room_id, Service_id, Start, End, callback) {
        con.query(`INSERT INTO reservations (reservation_id, room_id, user_id, service_id, start_date, end_date) VALUES (NULL, ${Room_id}, ${User_id}, ${Service_id}, '${Start}', '${End}');`, callback)
    },


}

module.exports = reservationsActions;