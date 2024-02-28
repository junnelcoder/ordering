const express = require('express');
const router = express.Router();
const app = express();
const axios = require('axios');
const sql = require('mssql');


router.get('/test', (req, res) => {
    res.send('Testing route is working!');
    console.log("running");
});
router.get('/api/users', async (req, res) => {
    try {
        await sql.connect(config);
        const result = await sql.query`SELECT * FROM users`;
        res.json(result.recordset);
    } catch (err) {
        console.error(err.message);
        res.status(500).send('Server Error');
    } 
    // finally {
    //     await sql.close();
    // }
});

module.exports = router;