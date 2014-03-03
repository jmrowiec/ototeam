# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "MyString"
    start "2014-02-27 17:17:34"
    desc "MyString"
    invFrom "2014-02-27 17:17:34"
    invTo "2014-02-27 17:17:34"
    limitFrom 1
    limitTo 1
    answerTime 1
    showPpls false
  end
end
