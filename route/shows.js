const express = require('express');

const router = express.Router();

router.get('/',require('../controller/shows').allshows)

module.exports = router;