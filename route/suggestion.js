const express = require('express');

const middleware = require('../model/tokenvalidation');

const router = express.Router();

router.post('/',middleware,require('../controller/suggestion').suggestion)

module.exports = router;