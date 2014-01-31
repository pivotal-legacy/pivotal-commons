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
    expect(page).to have_selector "input[type=text][name=name]"
    expect(page).to have_selector "input[type=text][name=email]"
    expect(page).to have_selector "input[type=text][name=organization]"
    expect(page).to have_selector "input[type=text][name=website]"
    expect(page).to have_selector "input[type=text][name=number_of_seats]"
    expect(page).to have_selector "input[type=radio][name=full_time_schedule][value=Yes]"
    expect(page).to have_selector "input[type=radio][name=full_time_schedule][value=No]"
    expect(page).to have_selector "input[type=text][name=schedule_other_response]"
    expect(page).to have_selector "textarea[name=pivotal_reference]"
    expect(page).to have_selector "textarea[name=pitch]"
    expect(page).to have_selector "textarea[name=why_valuable]"
    expect(page).to have_selector "textarea[name=community_contribution]"
    expect(page).to have_selector "textarea[name=misc]"

  end
end
