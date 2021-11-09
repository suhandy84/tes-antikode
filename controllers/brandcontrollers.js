const { db } = require('../connection')

module.exports = {
    allbrand: (req, res) => {
        console.log(req)
        db.query('select * from brand', (err, result) => {
            if (err) return res.status(500).send(err)
            console.log(res)
            return res.status(200).send(result)
        })
    },
    addbrand: (req, res) => {
        var sql = `insert into brand set ?`
        db.query(sql, req.body, (err, result) => {
            if (err) res.status(500).send(err)
            // res.status(200).send(result)
            sql = `select * from brand`
            db.query(sql, (err, result1) => {
                if (err) res.status(500).send(err)
                res.status(200).send(result1)
            })
        })
    },
    deletebrand: (req, res) => {
        var sql = `delete from brand where id=${req.params.id}`
        db.query(sql, (err, result) => {
            if (err) return res.status(500).send(err)
            db.query('select * from brand', (err, result1) => {
                if (err) return res.status(500).send(err)
                return res.status(200).send(result1)
            })
        })
    },
    editbrand: (req, res) => {
        var sql = `update brand set ? where id=${req.params.id}`
        db.query(sql, req.body, (err, result) => {
            if (err) return res.status(500).send(err)
            db.query('select * from brand', (err, result1) => {
                if (err) return res.status(500).send(err)
                return res.status(200).send(result1)
            })
        })
    }
}