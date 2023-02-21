class User {
    constructor({firstName, lastName, email, password, phoneNumber}) {
        this.firstName = firstName
        this.lastName = lastName
        this.email = email
        this.password = password
        this.phoneNumber = phoneNumber
    }

    firstName;
    lastName;
    email;
    password;
    phoneNumber;
}



const UserActions = {
    getUser(con, mail, password, callback) {
        con.query(`SELECT * FROM users WHERE user_password='${password}' AND user_email='${mail} '`, callback)
    },

    isUserExist(con, mail, callback) {
        con.query(`SELECT * FROM users WHERE user_email='${mail} '`, callback)
    },

    insertUser(con, User, callback) {
                console.log(User);
                con.query(`INSERT INTO users (user_id, user_firstname, user_lastname, user_email, user_password, user_phonenumber) VALUES('${User.firstName}', '${User.lastName}', '${User.email}', '${User.password}', ${User.phoneNumber})`, callback)
        }
    
}

module.exports = { User, UserActions };