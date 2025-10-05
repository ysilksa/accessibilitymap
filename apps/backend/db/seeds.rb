# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Location.create(name: "Location 1", address: "Test Address 1", city: "Test City 1", state: "Test State 1", zip: "Test Zip 1", country: "Test Country 1", nodes: [])
Location.create(name: "Location 2", address: "Test Address 2", city: "Test City 2", state: "Test State 2", zip: "Test Zip 2", country: "Test Country 2", nodes: [])
Location.create(name: "Location 3", address: "Test Address 3", city: "Test City 3", state: "Test State 3", zip: "Test Zip 3", country: "Test Country 3", nodes: [])
