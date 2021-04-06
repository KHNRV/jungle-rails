require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: true do
  before :each do
    User.create!(first_name: "Rick",last_name: "Sanchez", email: "rick.sanchez@citadel.rick", password: "morty+jessica", password_confirmation: "morty+jessica")
  end
  scenario 'user can login succesffully' do
    visit root_path
    page.find_by_id('user_nav_menu').click
    page.find_link('Login', href:'/login').click
    page.find_field('email').set('rick.sanchez@citadel.rick')
    page.find_field('password').set('morty+jessica')
    page.find_button('Submit').click
    expect(page.find_by_id('user_nav_menu')).to have_text('Rick')
  end
end
