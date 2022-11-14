const knex = require('../model/database');

exports.suggestion = (req,res)=>{

    var screen_no = 'screen_no_'+req.body.Screen_No;

    var show_time = req.body.Show_Time;

    knex(screen_no).where('Status','open').then(result=>{

        if(result.length == 0){

            knex('shows').where('Screen_No',screen_no).andWhere('Availability','available').then(result=>{

                if(result.length != 0){

                    res.status(200).json({

                        'Next Available Shows' : result
    
                    })

                }

                else{

                    res.status(200).json('All Shows Full!!!')
                }

            })

        }else{

            res.send('Continue Booking!!!')
        }

    })

}