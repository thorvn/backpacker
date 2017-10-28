FactoryGirl.define do
  factory :trip_one, class: Trip do
    title "Trip one"
    price 666
    start_date Date.today
    end_date Date.today + 10.days
    number_of_member 3
  end
end
