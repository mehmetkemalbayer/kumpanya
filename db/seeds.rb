# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.create([{shortDesc: "Admin"},
             {shortDesc: "Contributor"}
            ])
User.create([{name: "Mehmet Kemal", surname: "Bayer", email: "kemal.bayer@gmail.com", password: "kemal123", password_confirmation: "kemal123"},
             {name: "Berfu", surname: "Bayer", email: "berfu.bayer@gmail.com", password: "berfu123", password_confirmation: "berfu123"},
             {name: "Burak", surname: "Bayer", email: "burak.bayer@gmail.com", password: "burak123", password_confirmation: "burak123"}])
Campaign.create([{due_date: Time.now + 1.week, name: "first_campaign"},
                 {due_date: Time.now + 1.week, name: "second_campaign"},
                 {due_date: Time.now + 1.week, name: "third_campaign"},
                 {due_date: Time.now + 1.week, name: "forth_campaign"},
                 {due_date: Time.now + 1.week, name: "fifth_campaign"}
                ])
