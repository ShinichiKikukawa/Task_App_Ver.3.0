# coding: utf-8

User.create!( name: "管理者",
              email: "sample@email.com",
              password: "password",
              password_confirmation: "password")

puts "Users Created"              

50.times do |n|
  task_name = "タスク#{n + 1}"
  detail = "タスク詳細#{n + 1}"
end

puts "Tasks Created"   