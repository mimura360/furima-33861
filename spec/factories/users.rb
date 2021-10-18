FactoryBot.define do 
  factory :user do 
    nickname              { 'テストユーザー' }
    email                 { Faker::Internet.free_email }
    password              { 'test12' }
    password_confirmation { password }
    last_name             { '苗字' }
    first_name            { '名前' }
    last_name_kana        { 'ミョウジカナ' }
    first_name_kana       { 'ナマエカナ' }
    birthday              { '2000-01-01' }
  end
end