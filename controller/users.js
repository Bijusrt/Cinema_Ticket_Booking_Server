const knex = require('../model/database');

const jwt = require('jsonwebtoken');

exports.updateUser = (req,res)=>{

    var updateDetails = {};

    updateDetails['EmailId'] = req.body.EmailId;

    updateDetails['MobileNo'] = req.body.MobileNo;

    knex('users').where('EmailId',req.decodedToken).update(updateDetails).then(result=>{

        knex('users').where('EmailId',req.decodedToken).then(result =>{

            delete result[0].PassWord;

            res.status(200).json(result[0]);
        
        });
        
    })

};


exports.newUser = async (req,res)=>{

    var userDetails = {};

    userDetails['EmailId'] = req.body.EmailId;

    userDetails['MobileNo'] = req.body.MobileNo;

    userDetails['UserId'] = req.body.UserId;

    userDetails['PassWord'] = req.body.PassWord;

    nameFlag = false;

    emailFlag = false;

    await knex('users').then(result =>{

        for(var i of result){

            if(i.UserId == userDetails.UserId){

                nameFlag = true;

            }

            if(i.EmailId == userDetails.EmailId){

                emailFlag = true;

            }

        }
        
    })

    if(nameFlag){

        res.status(400).json('User Already Exists!');

    }else if(emailFlag){
        
        res.status(400).json('Email already in use!');

    }else{

        knex('users').insert(userDetails).then(result => {

            knex('users').where('UserId',userDetails.UserId).then(result =>{

                delete result[0].PassWord;
                
                res.status(200).json(result[0]);
            
            });
    
        });

    }

};

exports.userLogin = (req,res)=>{

    knex('users').where('EmailId',req.body.EmailId).then(result=>{

        if(result.length == 0){

            res.status(400).json('Invalid Email!');

        }else{

            if(result[0].PassWord == req.body.PassWord){

                let token = jwt.sign(req.body.EmailId,'tokenvalidator')

                res.status(200).json({

                    'Token' : token,

                    'Login' : 'Success'

                });

            }else{
                
                res.status(400).json('Incorrect Password!');

            }

        }

    })

};