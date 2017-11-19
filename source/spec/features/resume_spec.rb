require "spec_helper"

describe "resume page", type: :feature do
 before do
   visit "/resume.html"
 end

it 'displays resume' do
  expect(page).to have_css '.resume'
  within '.resume' do
    expect(page).to have_content 'Company'
    expect(page).to have_content 'Role'
  end
end
end
