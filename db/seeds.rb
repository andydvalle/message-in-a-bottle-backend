# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Message.destroy_all
Journal.destroy_all

User.create({
    name: "john",
    password: "john"
})
User.create({
    name: "andy",
    password: "andy"
})
User.create({
    name: "klarissa",
    password: "klarissa"
})

Message.create({
        content: "I had a dream last night that I was flying, I still secretly wish one day I will be soon",
        sender_user_id: 1, 
        receiver_user_id: 2
    })

Message.create({
        content: "I've been sending letters to all my high school enemies sent to random addresses",
        sender_user_id: 2, 
        receiver_user_id: 3
    })

Message.create({
        content: "If you are reading this, please have a good day",
        sender_user_id: 3, 
        receiver_user_id: 1
    })
