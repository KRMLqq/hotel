const serviceActions = require('../models/services');

const serviceControls = {
    getAllServices(req, res) {
        serviceActions.getAllServices(req.con, (err, result) => {
            if (err) throw err;
            res.json(result);
        })
    },
}

module.exports = serviceControls;