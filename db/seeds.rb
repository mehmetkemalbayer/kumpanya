# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([{id: 1, name: "Mehmet Kemal", surname: "Bayer", email: "kemal.bayer@gmail.com", password: "kemal123", password_confirmation: "kemal123"},
             {id: 2, name: "Berfu", surname: "Bayer", email: "berfu.bayer@gmail.com", password: "berfu123", password_confirmation: "berfu123"},
             {id: 3, name: "Burak", surname: "Bayer", email: "burak.bayer@gmail.com", password: "burak123", password_confirmation: "burak123"}])
Campaign.create([{id: 1, due_date: Time.now + 1.week, name: "first_campaign"},
                 {id: 2, due_date: Time.now + 1.week, name: "second_campaign"},
                 {id: 3, due_date: Time.now + 1.week, name: "third_campaign"},
                 {id: 4, due_date: Time.now + 1.week, name: "forth_campaign"},
                 {id: 5, due_date: Time.now + 1.week, name: "fifth_campaign"}
                ])
Role.create([{id: 1, shortDesc: "Admin"},
             {id: 2, shortDesc: "Contributor"}
            ])
UserCampaign.create([
                    {id: 1, user_id: 1, campaign_id: 1, role_id: 1},
                    {id: 2, user_id: 1, campaign_id: 2, role_id: 1},
                    {id: 3, user_id: 1, campaign_id: 3, role_id: 1},
                    {id: 4, user_id: 1, campaign_id: 4, role_id: 1},
                    {id: 5, user_id: 1, campaign_id: 5, role_id: 1},
                    {id: 6, user_id: 2, campaign_id: 1, role_id: 2},
                    {id: 7, user_id: 3, campaign_id: 1, role_id: 2},                    
                    ])