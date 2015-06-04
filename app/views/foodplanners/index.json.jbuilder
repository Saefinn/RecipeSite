json.array!(@foodplanners) do |foodplanner|
  json.extract! foodplanner, :id, :title, :breakfast, :lunch, :dinner, :snacks, :date, :shoppinglist
  json.url foodplanner_url(foodplanner, format: :json)
end
