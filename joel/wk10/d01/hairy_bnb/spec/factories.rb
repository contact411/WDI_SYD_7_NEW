FactoryGirl.define do

  factory :apartment do
    sequence(:title) { |n| "Spacious #{n} Bed Apartment with Grand View" }
    sequence(:bedrooms) { |n| n }
    price_in_cents 1_500_000
    location "Bondai, NSW"
    description "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit explicabo aut iste molestias doloribus dolorum vitae voluptates ex deserunt quaerat perferendis, at eaque asperiores! Quis repellendus ipsa fugiat obcaecati enim."
    available true
  end
end