# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(  email: "admin@gmail.com", password: "123456")

Brand.create(  name: "abc")
Brand.create(  name: "def")
Brand.create(  name: "hig")
Brand.create(  name: "xyz")
Brand.create(  name: "pqr")
Brand.create(  name: "lmn")

Category.create(  name: "dummy1")
Category.create(  name: "dummy2")
Category.create(  name: "dummy3")
Category.create(  name: "dummy4")
Category.create(  name: "dummy5")
Category.create(  name: "dummy6")

Item.create(  name: "item1", brand_id:1, category_id:1, quantity: 20, status: true, notes: "this is a dummy text.this is a dummy text.this is a dummy text.")
Item.create(  name: "item2", brand_id:2, category_id:2, quantity: 30, status: true, notes: "this is a dummy text.this is a dummy text.this is a dummy text.")
Item.create(  name: "item3", brand_id:3, category_id:3, quantity: 10, status: true, notes: "this is a dummy text.this is a dummy text.this is a dummy text.")
Item.create(  name: "item4", brand_id:4, category_id:4, quantity: 22, status: true, notes: "this is a dummy text.this is a dummy text.this is a dummy text.")
Item.create(  name: "item5", brand_id:5, category_id:5, quantity: 12, status: true, notes: "this is a dummy text.this is a dummy text.this is a dummy text.")

Employee.create(  name: "ankan", email: "ankan@gmail.com", status: true)
Employee.create(  name: "abcdef", email: "abcdef@gmail.com", status: true)
Employee.create(  name: "rohit", email: "abcdedcsff@gmail.com", status: true)
Employee.create(  name: "arya", email: "abcdeftdff@gmail.com", status: true)
Employee.create(  name: "shubham", email: "shubhan@gmail.com", status: true)
Employee.create(  name: "rohan", email: "rohan@gmail.com", status: true)

Issue.create(employee_id: 1, item_id: 1, quantity: 6, issue_date: "2020-11-21", return_date: "2020-11-30")
Issue.create(employee_id: 2, item_id: 2, quantity: 10, issue_date: "2020-11-26", return_date: "2020-11-28")
Issue.create(employee_id: 3, item_id: 3, quantity: 8, issue_date: "2020-11-24", return_date: "2020-11-30")
Issue.create(employee_id: 4, item_id: 4, quantity: 8, issue_date: "2020-11-23", return_date: "2020-11-29")