FactoryGirl.define do
  factory :wine do
    vintage             rand(1990..Time.now.year)
    winery_id           1
    grape_id            1
    alcohol_percentage  rand(5..20)
    serving_temperature rand(40..60)
    sweetness           rand(9)
    acidity             rand(9)
    tanin               rand(9)
    fruit               rand(9)
    body                rand(9)
    category_type       'red'
  end
end
