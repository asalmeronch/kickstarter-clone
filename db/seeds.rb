# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#end

Category.create!(name: "Entertainment")
Category.create!(name: "Health")

Project.create!(category_id: 1, title: "Neat Video Game", description: "Some cool video game for Nintendo Switch", goal_amount: 2000.00, start_date: "2024-1-1", end_date: "2024-1-1")
Project.create!(category_id: 2, title: "Ouchie", description: "I tripped and need to go to the doctor's office. Help!", goal_amount: 9000.00, start_date: "2024-1-1", end_date: "2024-1-1")
Project.create!(category_id: 1, title: "TikTok dream", description: "I want to become an influencer. Help me realize my dream!!", goal_amount: 100000.00, start_date: "2024-1-1", end_date: "2024-1-1")

Reward.create!(project_id: 1, description: "once we hit 1k everyone who donated this far will get a plushie with the game!", amount: 1000.00, limit: 10.00, delivery_date: "2024-1-1")
Reward.create!(project_id: 3, description: "I'll visit people personally who donate this amount <3", amount: 50000.00, limit: 5000.00, delivery_date: "2024-1-1")
