FactoryGirl.define do
  factory :trip_one, class: Trip do
    title "Trip one"
    price 666
    start_date Date.today
    end_date Date.today + 10.days
    number_of_member 3
  end

  factory :trip_two, class: Trip do
    title "Trip two"
    price 20
    start_date Date.today + 3.days
    end_date Date.today + 14.days
    number_of_member 2
  end
end
