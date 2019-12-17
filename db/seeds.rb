# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  u = User.create(first_name: 'Bob', email: 'bobsmail.mail@mail.ru', password: 'BobsPassword')
  p = Project.create(proj_name: 'MyProj', proj_url: 'https://github.com/vovacolt/A-Box/tree/frontend_v')
  UserProject.create(user: u, project: p)
  p = Project.create(proj_name: 'MyProj2', proj_url: 'https://stackoverflow.com/questions/1911109/how-do-i-clone-a-specific-git-branch')
  UserProject.create(user: u, project: p)
end
