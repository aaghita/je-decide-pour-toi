FactoryBot.define do
  factory :humeur do
    sequence(:name) { |n| "Engineer-#{n}" }
    factory :humeur_blank do
      name { '' }
    end
  end
end
