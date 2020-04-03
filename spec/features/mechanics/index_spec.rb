require 'rails_helper'

RSpec.describe "As a user, when I visit a mechanics index page" do
  it "I see a header saying All Mechanics" do

  visit '/mechanics'
end
end






# Story 1
# As a user,
# When I visit a mechanics index page
# I see a header saying “All Mechanics”
# And I see a list of all mechanic’s names and their years of experience
#
#
# Ex:
#               All Mechanics
#
#     Sam Mills - 10 years of experience
#     Kara Smith - 11 years of experience
