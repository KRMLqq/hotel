const reservationsActions = {
    getUserReservations(con, user_id, callback) {
        con.query(`SELECT * FROM reservations WHERE user_id=${user_id}`, callback)
    },

    addReservation(con, user_id, room_id, callback) {
        con.query()
    },


}