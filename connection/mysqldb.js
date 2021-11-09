const mysql = require('mysql')
const db = mysql.createConnection({
    host: 'localhost',
    user: 'handy',
    password: 'suhand13712',
    database: 'backendtest_db',
    port: '3306'
})

db.connect((err) => {
    if (err) {
        console.log(err)
    }
    console.log('connect sudah')
})

module.exports=db