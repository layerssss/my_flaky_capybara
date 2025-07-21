require 'rails_helper'

RSpec.feature "Mains", type: :feature do
  it "signs me in" do
    visit '/'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Sign in'
    expect(page).to have_content 'Success'
  end
end
