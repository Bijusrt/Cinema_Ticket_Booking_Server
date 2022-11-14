const express = require('express');

const middleware = require('../model/tokenvalidation');

const router = express.Router();

router.put('/',middleware,require('../controller/cancellation').cancellation)

module.exports = router;