const roomsAction = {
    getAllRooms(con, callback) {
        con.query("SELECT * FROM rooms", callback);
    }
    

}

module.exports = roomsAction;