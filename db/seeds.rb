# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(first_name: 'Gaston', last_name: 'Kennedy', email: 'gastontk@hotmail.com', password: 'abcd1234', password_confirmation: 'abcd1234', street: '2222 NE 92nd St. #415', city: 'Seattle', state: 'WA', zip: '98105')
User.create(first_name: 'Jacky', last_name: 'Kennedy', email: 'kennedyj4@comcast.net', password: 'abcd1234', password_confirmation: 'abcd1234', street: '9014 25th Ave NW', city: 'Seattle', state: 'WA', zip: '98117')
User.create(first_name: 'Sara22', last_name: 'Kennedy', email: 'sara@comcast.net', password: 'abcd1234', password_confirmation: 'abcd1234', street: '1003 N. Union st.', city: 'Kennewick', state: 'WA', zip: '99336')
User.create(first_name: 'John22', last_name: 'Jefferson', email: 'john@john.com', password: 'abcd1234', password_confirmation: 'abcd1234', street: '1615 Goethals st.', city: 'Richland', state: 'WA', zip: '99352')