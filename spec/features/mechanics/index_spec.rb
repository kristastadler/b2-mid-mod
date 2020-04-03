require 'rails_helper'

RSpec.describe "As a user, when I visit a mechanics index page" do
  it "I see a header saying All Mechanics" do

  visit '/mechanics'
  end

  it "I see a list of all mechanic’s names and their years of experience" do

    bob = Mechanic.create(name: "Bob Jones",
                          years_of_experience: 8)

    jill = Mechanic.create(name: "Jill Adams",
                          years_of_experience: 15)

    visit '/mechanics'

    within "#mechanic-#{bob.id}" do
        expect(page).to have_content(bob.name)
        expect(page).to have_content("#{bob.years_of_experience} years of experience")
    end

    within "#mechanic-#{jill.id}" do
        expect(page).to have_content(jill.name)
        expect(page).to have_content("#{jill.years_of_experience} years of experience")
    end

  end
end
