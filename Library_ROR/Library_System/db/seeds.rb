# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#staff -------------------------------------- 5 seeds

#staff.create!(staff_title: 'Librarian Director', staff_name: 'John', staff_lastname: 'Smith', staff_code: '123abc')
#staff.create!(staff_title: 'Pages', staff_name: 'Peggy', staff_lastname: 'Anderson', staff_code: '456erf')
#staff.create!(staff_title: 'Library Manager', staff_name: 'Jimmy', staff_lastname: 'Jones', staff_code: '687toy')
#staff.create!(staff_title: 'Librarian', staff_name: 'Mary', staff_lastname: 'Chase', staff_code: '789zxy')
#staff.create!(staff_title: 'Librarian Assistant', staff_name: 'Susan', staff_lastname: 'Oij', staff_code: '684rfrs')

#cardholder_accounts ------------------------ 5 seeds

CardholderAccount.create!(firstname: 'William', lastname: 'Qubert', cardholder_id: 1001)
CardholderAccount.create!(firstname: 'Garry', lastname: 'Wells', cardholder_id: 1002)
CardholderAccount.create!(firstname: 'Lizzy', lastname: 'Flor', cardholder_id: 1003)
CardholderAccount.create!(firstname: 'Paul', lastname: 'Wilbert', cardholder_id: 1004)
CardholderAccount.create!(firstname: 'Ollie', lastname: 'Revere', cardholder_id: 1005)

#cardholder_personal_infos ------------------ 5 seeds

#CardholderPersonalInfo.create!(name: 'Jazmin', lastname: 'Andrade', email: 'jmaya01@aurora.edu', phone_num: '340-234-1123', home_num: '2342343453', street: '123 Lake St.', city: 'Aurora', state: 'IL', zip: '60472', cardholder_id: 1001)
#CardholderPersonalInfo.create!(name: 'Garry', lastname: 'Wells', email: 'gwells01@aurora.edu', phone_num: '234-214-1234', home_num: '3241232342', street: '343 Lake St.', city: 'Aurora', state: 'IL', zip: '60472', cardholder_id: 1002)
#CardholderPersonalInfo.create!(name: 'Lizzy', lastname: 'Flor', email: 'lflor01@aurora.edu', phone_num: '345-234-5671', home_num: '6974542511', street: '445 Lake St.', city: 'Aurora', state: 'IL', zip: '60472', cardholder_id: 1003)
#CardholderPersonalInfo.create!(name: 'Paul', lastname: 'Wilbert', email: 'pwilbert01@aurora.edu', phone_num: '213-234-4501', home_num: '4555653452', street: '154 Lake St.', city: 'Aurora', state: 'IL', zip: '60472', cardholder_id: 1004)
#CardholderPersonalInfo.create!(name: 'Ollie', lastname: 'Revere', email: 'orevere01@aurora.edu', phone_num: '345-345-3243', home_num: '4563455463', street: '984 Lake St.', city: 'Aurora', state: 'IL', zip: '60472', cardholder_id: 1005)


#checkouts ---------------------------------- 5 seeds

#Checkout.create!(date: '2015, 12, 12', due_date: '2015, 01, 01', cardholder_id: '1', staff_member_id: '4')
#Checkout.create!(date: '2015, 05, 04', due_date: '2015, 05, 30', cardholder_id: '2', staff_member_id: '5')
#Checkout.create!(date: '2015, 06, 05', due_date: '2015, 06, 24', cardholder_id: '3', staff_member_id: '4')
#Checkout.create!(date: '2015, 04, 03', due_date: '2015, 04, 15', cardholder_id: '4', staff_member_id: '5')
#Checkout.create!(date: '2015, 06, 10', due_date: '2015, 06, 26', cardholder_id: '5', staff_member_id: '4')

#fines -------------------------------------- 5 seeds

#Fine.create!(date_of_fine: '2015, 01, 01', amount: '2.00', cardholder_id: '1')
#Fine.create!(date_of_fine: '2015, 05, 30', amount: '3.50', cardholder_id: '2')
#Fine.create!(date_of_fine: '2015, 06, 24', amount: '4.50', cardholder_id: '3')
#Fine.create!(date_of_fine: '2015, 04, 15', amount: '3.00', cardholder_id: '4')
#Fine.create!(date_of_fine: '2015, 06, 26', amount: '1.25', cardholder_id: '5')

#materials ---------------------------------- 5 seeds

#Material.create!(material_type: 'Book', material_classification_id: 'Fiction', material_title: 'Java 3 Introduction to Programming', quantity_material: '2')
#Material.create!(material_type: 'Book', material_classification_id: 'Non-Fiction', material_title: 'Little Red Ridding Hood', quantity_material: '1')
#Material.create!(material_type: 'Book', material_classification_id: 'Fiction', material_title: 'C++ Introduction to Programming', quantity_material: '5')
#Material.create!(material_type: 'Book', material_classification_id: 'Fiction', material_title: 'This is Another Book', quantity_material: '3')
#Material.create!(material_type: 'Book', material_classification_id: 'Non-Fiction', material_title: 'Astronomy: Volume 1', quantity_material: '1')









