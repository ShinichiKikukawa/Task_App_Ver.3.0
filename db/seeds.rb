# coding: utf-8

User.create!( name: "管理者",
              email: "sample@email.com",
              password: "password",
              password_confirmation: "password")

puts "Users Created"              

admin_user = User.first

50.times do |n|
  name = "タスク#{n + 1}"
  description = "タスク詳細#{n + 1}"
  admin_user.tasks.create!(name: name, description: description)
end

puts "Tasks Created"   