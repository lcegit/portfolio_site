require "spec_helper"

describe "index page", type: :feature do
 before do
   visit "/index.html"
 end

it 'displays dev projects' do
  expect(page).to have_css '.projects'
  within '.projects' do
   expect(page).to have_content 'Slow food'
   expect(page).to have_content 'BMI'
  end
end


it 'renders footer partial' do
  expect(page).to have_selector 'footer'
  within 'footer' do
    expect(page).to have_content 'Get in touch'
    expect(page).to have_content 'About'
  end
end
