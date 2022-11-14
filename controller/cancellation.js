const { json } = require('body-parser');
const knex = require('../model/database');

exports.cancellation = async(req,res)=>{

    var cancellation_details = {}

    cancellation_details['UserId'] = req.body.UserId;

    cancellation_details['Screen_No'] = req.body.Screen_No;

    cancellation_details['SeatNo'] = req.body.SeatNo;

    screen_no = 'screen_no_' + req.body.Screen_No;

    await knex(screen_no).update('Status','open').whereIn('SeatNo',cancellation_details['SeatNo']).then(async result=>{

        await knex('booking').where('UserId',cancellation_details['UserId']).andWhere('Screen_No',cancellation_details['Screen_No']).then(async result=>{

            var result_dic = JSON.parse(result[0].SeatNo)

            for(var index of Object.keys(result_dic)){

                if(cancellation_details['SeatNo'].includes(result_dic[index])){

                    delete result_dic[index];

                }
            }
            console.log(result_dic);

            if(Object.values(result_dic).length > 0){

                var final_dic = {}

                for(var key = 0; key< Object.values(result_dic).length; key++){

                    final_dic[`${key+1}`] = Object.values(result_dic)[key];

                }
                
                // console.log(result_dic,final_dic);

                await knex('booking').update('SeatNo',final_dic).where({'UserId' : cancellation_details['UserId']}).then(result=>{

                    res.status(200).json('Cancellation Success!!!');

                })

            }

            else{

                knex('booking').where({'UserId':cancellation_details['UserId']}).del().then(result=>{

                    res.status(200).json("Cancellation Success!!!");

                })

            }

        })
    })
}