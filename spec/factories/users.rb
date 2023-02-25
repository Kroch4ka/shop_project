FactoryBot.define do
  factory :user do
    first_name { 'Никита' }
    last_name { 'Голубев' }
    email { 'example@gmail.com' }
    password { '123456' }
  end
end
