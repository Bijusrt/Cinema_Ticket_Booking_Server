const knex = require('../model/database');

exports.allshows = (req,res)=>{

    knex('shows').then(result=>{

        res.status(200).json(result);

    })

}