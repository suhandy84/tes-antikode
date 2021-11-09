const mysql = require('mysql')
const db = mysql.createConnection({
    host: 'localhost',
    user: 'your_username',
    password: 'your_password',
    database: 'your_database',
    port: '3306'
})

db.connect((err) => {
    if (err) {
        console.log(err)
    }
    console.log('connect sudah')
})

module.exports=db