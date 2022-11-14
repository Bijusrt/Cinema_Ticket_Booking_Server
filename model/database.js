module.exports = require('knex')({

    client: 'mysql',
    
    connection: {
    
        host : 'localhost',
    
        user : 'root',
    
        password : process.env.DBPASSSWORD,
    
        database : process.env.DATABASE
    
    }
 
});