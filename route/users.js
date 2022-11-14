const express = require('express');

const router = express.Router();

const middleware = require('../model/tokenvalidation');



router.put('/update_user',middleware,require('../controller/users').updateUser);

router.post('/new_user',require('../controller/users').newUser);

router.post('/login',require('../controller/users').userLogin);


module.exports = router;