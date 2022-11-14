const knex = require('../model/database');

exports.booking = async(req,res)=>{

    var booking_details = {};

    booking_details['UserId'] = req.body.UserId;

    booking_details['Screen_No'] = req.body.Screen_No;

    booking_details['SeatNo'] = req.body.SeatNo;

    screen_no = 'screen_no_' + req.body.Screen_No;

    var booking_flag = true

    await knex(screen_no).whereIn('SeatNo',booking_details['SeatNo']).then(async result=>{

        for (var seatno of result){

            if(seatno['Status'] == 'booked'){

                booking_flag = false

                res.send('Seat Unavailable!!!')

                break;

            }

        }

    }) 

    if(booking_flag){

        var seating = {};

        for (var index=0;index<booking_details['SeatNo'].length;index++){

            seating[index+1] = booking_details['SeatNo'][index];

        }
        // console.log(seating);

        knex(screen_no).update({'Status' : 'booked'}).whereIn('SeatNo',booking_details['SeatNo']).then(async result=>{
            
            knex('booking').where('UserId' , booking_details['UserId']).andWhere('Screen_No',booking_details['Screen_No']).then(result=>{

                if(result.length == 0){

                    booking_details['SeatNo'] = seating;

                    knex('booking').insert(booking_details).then(result=>{

                        res.status(200).send('Booking Success!!!')

                    })

                }

                else{

                    var result_list = (Object.values(JSON.parse(result[0].SeatNo))).concat(booking_details['SeatNo']).sort();

                    var final_dic = {}

                    for (var key = 0; key<result_list.length; key++){

                        final_dic[`${key+1}`] = result_list[key]

                    }

                    knex('booking').update('SeatNo',final_dic).where('UserId' , booking_details['UserId']).andWhere('Screen_No',booking_details['Screen_No']).then(result=>{

                        res.status(200).json("Booking Success!!!")
                        
                    })

                }

            })  

        })

    }

}