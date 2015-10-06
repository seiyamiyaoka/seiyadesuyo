# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
1000.times do |no|
  Blog.create(:name => "名前#{no}",:title => "タイトル#{no}", :content => "内容#{no}",:user_id => "#{no}")
end
1000.times do |no|
  User.create(:email => "houoydvgih@example.com#{no}",:password => "password#{no}",:uid => "uid#{no}",:provider => "provider#{no}")
end