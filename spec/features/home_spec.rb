require 'spec_helper'

describe "visiting the homepage" do
  it "shows an apply link", driver: :webkit, inaccessible: true do
    visit root_path

    expect(page).to have_content "Pivotal Commons"

    expect(page).to have_content "WHO"
    expect(page).to have_content "WHAT"
    expect(page).to have_content "WHEN"
    expect(page).to have_content "WHERE"
    expect(page).to have_content "WHY"

    expect(page).to have_selector "blockquote"
    expect(page).to have_content "FAQ"

    click_on "Apply Now"
    expect(page).to have_selector "iframe"
  end
end
