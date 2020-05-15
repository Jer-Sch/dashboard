# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ login: "user1", password: "glbrcpass" }, 
             { login: "user2", password: "glbrcpass" },
             { login: "user3", password: "glbrcpass" }])

Application.create([{ name: "Google", description: "Search Engine", color: "Red", default_status: true, link: "http://www.google.com" },
                    { name: "Wisc", description: "UW Homepage", color: "Blue", default_status: false, link: "http://www.wisc.edu" },
                    { name: "GLBRC", description: "Great Lakes Bioenergy Research Center", color: "Yellow", default_status: true, link: "http://www.glbrc.org" },
                    { name: "WEI", description: "Wisconsin Energy Institute", color: "Green", default_status: false, link: "https://energy.wisc.edu/" },
                    { name: "Twitter", description: "Twitter", color: "Purple", default_status: false, link: "https://twitter.com/" }])

applications = Application.where(default_status: true)

users.each{|user| user.applications << applications }
