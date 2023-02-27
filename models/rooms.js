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
    }
}

module.exports = roomsAction;