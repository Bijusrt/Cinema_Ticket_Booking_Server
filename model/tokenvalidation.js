const jwt = require('jsonwebtoken');

module.exports = (req,res,next)=>{

    // console.log(req.headers.authorization);

    let decodedToken = jwt.verify(req.headers.authorization,'tokenvalidator');

    req.decodedToken = decodedToken;
    
    next()
}