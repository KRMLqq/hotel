const serviceActions = {
    getAllServices(con, callback) {
        con.query("SELECT * FROM services", callback)
    }
}

module.exports = serviceActions;