class Room {
    constructor({ name, persons, description, price, status }) {
        this.name = name;
        this.persons = persons;
        this.description = description;
        this.price = price;
        this.status = status;
    }
    name;
    persons;
    description;
    price;
    status;
}

const roomsAction = {
    getAllRooms(con, callback) {
        con.query("SELECT * FROM rooms", callback)
    },

    showRoomById(con, id, callback) {
        con.query(`SELECT * FROM rooms WHERE room_id='${id}'`, callback)
    },

    showFreeRoom(con, start, end, persons, callback) {
        con.query(`SELECT r.* FROM rooms r WHERE r.room_id NOT IN (SELECT rs.room_id FROM reservations rs WHERE rs.start_date = '${start}' OR rs.end_date = '${end}') AND r.room_persons >=${persons};`, callback)
    }
}

module.exports = roomsAction;