require 'spec_helper'

describe "visiting the homepage" do
  it "shows an apply link", driver: :webkit, inaccessible: true do
    visit root_path

    expect(page).to have_content "Pivotal Commons"

    expect(page).to have_content "Who"
    expect(page).to have_content "What"
    expect(page).to have_content "When"
    expect(page).to have_content "Where"
    expect(page).to have_content "Why"

    expect(page).to have_content "Testimonials"
    expect(page).to have_content "FAQ"

    click_on "Apply"
    expect(page).to have_css "form"
  end
end
