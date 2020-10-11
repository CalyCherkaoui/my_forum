FactoryBot.define do
  factory :profile do
    name { "author1" }
    username { "authoruser1" }
    admin { false }
    email { "author1@foobar.com"}
    password { "foobar" }
    password_confirmation {"foobar"}
  end
end